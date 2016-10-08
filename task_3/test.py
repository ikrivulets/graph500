import networkx as nx
import numpy
import matplotlib.pyplot as plt
from collections import Counter



f = open('graph12.txt', 'r')
f.readline()
g = nx.Graph()

for line in f:
    edge = [int(el) for el in line.split(',')]
    g.add_edge(edge[0],edge[1])
f.close()

graphs = list(nx.connected_component_subgraphs(g))
connected = 'yes' if len(graphs) == 1 else 'no'

count_nodes = 0
all_path = 0
diameter = 0

degree_file = open('all_degrees.txt', 'a')
for graph in graphs:
    p = nx.shortest_path_length(graph)
    graph.node
    nodes = graph.nodes()
    count_nodes += (len(nodes)*len(nodes))
    for v1 in nodes:
        degree_file.write('{}\n'.format(graph.degree(v1)))
        for v2 in nodes:
            diameter = p[v1][v2] if p[v1][v2] > diameter else diameter
            all_path += p[v1][v2]
degree_file.close()
avg_path = all_path / float(count_nodes)

f = open('out_all_new.txt', 'a')
f.write('{} {} {}\n'.format(diameter, avg_path, connected))
f.close()
