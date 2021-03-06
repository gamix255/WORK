#!/usr/bin/python
import dash
import dash_core_components as dcc
import dash_html_components as html
import numpy as np

x = np.linspace(-np.pi, np.pi, 10)
y = np.sin(x)
app = dash.Dash()

app.layout = html.Div(children=[
    html.H1(children='H1'),

    html.Div(children='''
        div string
    '''),

    dcc.Graph(
        id='example-graph',
        figure={
            'data': [
                {'x': x, 'y': np.sin(x), 'type': 'line', 'name': 'line'},
                {'x': x, 'y': np.cos(x), 'type': 'bar', 'name': 'bar'},
            ],
            'layout': {
                'title': 'graph title'
            }
        }
    )
])

if __name__ == '__main__':
    app.run_server(port=8080,debug=True)

