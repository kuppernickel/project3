new Chart(document.getElementById("canvas1"), {
    type: 'line',
    data: {
        datasets: [{
            label: '',
            data: [1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 4.5],
            borderColor: "#3e95cd",
            fill: false
        },
        ],
        labels: ["1학년1학기", "1학년2학기", "2학년1학기", "2학년2학기", "3학년1학기", "3학년2학기", "4학년1학기", "4학년2학기"],

    },
    options: {
        title: {
            display: true,
            text: '이 성적에 잠이오나'
        }
    }
});
