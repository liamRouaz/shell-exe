#!/bin/bash

read nb1 op nb2

resultat=$(expr $nb1 $op $nb2)

echo $resultat

