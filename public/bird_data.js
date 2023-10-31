import data from '../public/data/lifelist.json'

// const sortByDate = false
// const sortByLocation = false
let tableData

function filterByYear(year) {
    renderTable(tableData, /*sortByDate, sortByLocation,*/ year)
}

function dateSorterHandler() {
    renderTable(tableData, /*!sortByDate, sortByLocation,*/ null)
}

function locationSorterHandler() {
    renderTable(tableData, /*sortByDate, !sortByLocation,*/ null)
}

function renderTable(data, /*sortByDate, sortByLocation,*/ year) {

    // if (sortByDate) {
    data.sort((a, b) => {
        if (a.year < b.year) { return 1 }
        else if (a.year > b.year) { return -1 }
        else if (a.year === b.year) {
            if (a.month < b.month) { return 1 }
            else if (a.month > b.month) { return -1 }
            else if (a.month === b.month) {
                if (a.day < b.day) { return 1 }
                else if (a.day > b.day) { return -1 }
                else if (a.day === b.day) {
                    if (a.species > b.species) { return 1 }
                    else if (a.species < b.species) { return -1 }
                    else { return 0 }
                }
            }
        }
    })
    // }

    // if (sortByLocation) {
    //     data.sort((a, b) => {
    //         if (a.country > b.country) { return 1 }
    //         else if (a.country < b.country) { return -1 }
    //         else if (a.country === b.country) {
    //             if (a.state > b.state) { return 1 }
    //             else if (a.state < b.state) { return -1 }
    //             else if (a.state === b.state) {
    //                 if (a.city > b.city) { return 1 }
    //                 else if (a.city < b.city) { return -1 }
    //                 else { return 0 }
    //             }
    //         }
    //     })
    // }

    if (year !== 'all') {
        if (year === 'pre 2019') {
            data = data.filter((sighting) => sighting.year == null);
        } else {
            data = data.filter((sighting) => sighting.year == year);
        }
    }

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

    // update stats - get number of rows in table
    const statsCount = data.length;
    const stats_element = document.getElementById("stats");
    let stats;
    if (year === 'all')
        stats = `<h2>Total lifers to date: ${data.length}</h2>`;
    else
        stats = `<h2>Total lifers for ${year}: ${data.length}</h2>`;
    stats_element.innerHTML = stats;
    
}//end renderTable

// Heroku
// fetch('/api/sightings')
//     .then(response => response.json())
//     .then(data => {
//         console.log(data)
//         tableData = data
//         renderTable(data/*, true, false*/, 'all')
//     })

// get table as JSON
tableData = data;

function getMonthName(monthNumber) {
    const date = new Date();
    date.setMonth(monthNumber - 1);

    return date.toLocaleString('en-US', { month: 'long' });
}