
fetch('/api/sightings')
    .then(response => response.json())
    .then(data => {
        console.log(data)

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
    })

    function getMonthName(monthNumber) {
        const date = new Date();
        date.setMonth(monthNumber - 1);
      
        return date.toLocaleString('en-US', { month: 'long' });
      }