const filterByDate = false
const filterByLocation = false
let tableData

function dateFilterHandler() {
    renderTable(tableData, !filterByDate, filterByLocation)
}

function locationFilterHandler() {
    renderTable(tableData, filterByDate, !filterByLocation)
}

function renderTable(data, filterByDate, filterByLocation) {
    if (filterByLocation) 
        {data.sort((a, b) => {
            if (a.country > b.country) {return 1}
            else if (a.country < b.country) {return -1}
            else if (a.country === b.country) {
                if(a.state > b.state) {return 1}
                else if (a.state < b.state) {return -1}
                else if (a.state === b.state) {
                    if (a.city > b.city) {return 1}
                    else if (a.city < b.city) {return -1}
                    else {return 0}
                }
            }
        })}
    
    if (filterByDate)
    {data.sort((a,b) => {
        if (a.year < b.year) {return 1}
        else if (a.year > b.year) {return -1}
        else if (a.year === b.year) {
            if(a.month < b.month) {return 1}
            else if (a.month > b.month) {return -1}
            else if (a.month === b.month) {
                if (a.day < b.day) {return 1}
                else if (a.day > b.day) {return -1}
                else if (a.day === b.day) {
                    if (a.species > b.species) {return 1}
                    else if (a.species < b.species) {return -1}
                    else {return 0}
                }
            }
        }
    })}

    const table_element = document.getElementById("bird_data");
        //add headers to result
        let result = `<tr>
                        <th>Species</th>
                        <th>Date First Seen</th>
                        <th>Location</th>
                    </tr>`;

        data.forEach(row => {
            // result += JSON.stringify(row)
            result += `<tr>`;
            result += `<td>${row.species}</td>`;
            // result += `<td class="table__year">${row.year || 'pre 2019'}</td>`;
            if (row.year === null) {
                result += `<td class="table__year">${'pre 2019'}</td>`;
            }
            else if (row.month === null) {
                result += `<td class="table__year">${row.year}</td>`;
            }
            else if (row.day === null) {
                result += `<td class="table__year">${getMonthName(row.month) + ' ' + row.year}</td>`;
            }
            else {
                result += `<td class="table__year">${getMonthName(row.month) + ' ' + row.day + ', ' + row.year /*|| 'pre 2019'*/}</td>`;
            }
            // result += `<td>${row.country}</td>`;
            if (row.country === "") {
                result += `td class="table__year">${'Unknown'}</td>`;
            }
            else if (row.state === "") {
                result += `<td class="table__year">${row.country}</td>`;
            }
            else if (row.city === "") {
                result += `<td class="table__year">${row.state + ', ' + row.country}</td>`;
            }
            else {
                result += `<td class="table__year">${row.city + ', ' + row.state + ', ' + row.country}`
            }

            result += `</tr>`;
        })

        table_element.innerHTML = result;
}

fetch('/api/sightings')
    .then(response => response.json())
    .then(data => {
        console.log(data)
        tableData = data    
        renderTable(data, false, false) 
    })

    function getMonthName(monthNumber) {
        const date = new Date();
        date.setMonth(monthNumber - 1);
      
        return date.toLocaleString('en-US', { month: 'long' });
      }