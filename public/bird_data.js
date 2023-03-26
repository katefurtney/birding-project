
fetch('/api/sightings')
    .then(response => response.json())
    .then(data => {
        console.log(data)

        const table_element = document.getElementById("bird_data");
        //add headers to result
        let result = `<tr>
                        <th>Species</th>
                        <th>First Seen</th>
                        <th>Country</th>
                    </tr>`;

        data.forEach(row => {
            // result += JSON.stringify(row)
            result += `<tr>`;
            result += `<td>${row.species}</td>`;
            result += `<td class="table__year">${row.year || 'pre 2019'}</td>`;
            result += `<td>${row.country}</td>`;
            result += `</tr>`;
        })

        table_element.innerHTML = result;
    })