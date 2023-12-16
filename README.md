
-----------------------------------------------------------------------------------------------------------------------------------------

Q1) 
Substituting the given values, we get:
Passes = ceil(log(N/B)/log(B-1))    
Passes = ceil(log(1000000/6)/log(6-1)) = ceil(log(166666.67)/log(5)) = ceil(7.6) = 8
Therefore, the number of passes required to sort the file with N=1000000 pages with 6 buffer is 8.


Q7) 
1.	Partitioning: Divide the tables into smaller groups. This makes it easier to work with and speeds up the process by cutting down on the amount of data the algorithm has to handle.
2.	Memory Management: Efficiently use memory. Hash joins use a lot of memory, so using it wisely, like having a smaller hash table or reducing data size, helps things run smoother.
3.	Parallelism: Do things simultaneously. Break down the task and tackle different parts at the same time. This is like teamwork for computers and makes the process faster.
4.	Caching: Keep frequently used data handy. Storing often-used information in a cache helps avoid constantly reading from the main storage, making things quicker.
5.	Optimizing Hash Function: Improve the matching process. The way data is matched depends on a hash function. Making this function work better by reducing errors and spreading things out nicely improves the overall performance.



Q6) False
In the vectorized processing model, operators that gather input from multiple sources don't necessarily need to run on multiple threads to produce the Next() output tuples from each source. This model for data processing aims to enhance query execution speed by handling data in batches or vectors rather than individual tuples. Operators in this model follow a consistent interface to iterate through results in a Volcano-style fashion.
While the vectorized processing model can leverage multi-threading for optimal performance on multi-core processors and parallel resources, it doesn't strictly mandate the use of multiple threads. Interestingly, certain implementations of this model might choose to process data using a single thread




Q10)
Let’s denote the number of internal nodes as n and the number of leaf nodes as L. The relationship between the number of internal nodes and leaf nodes in a full binary tree is given by the formula:
L = n + 1 1.
So, if you have 2n internal nodes, you can substitute n with 2n/2 in the given formula:
L = (2n/2) + 1
Simplifying the above equation, we get:
L = n + 1

Q11)
In the cuckoo hashing rules, we first try to insert 13 using the first hash function. However, it collides with 12 already occupying the target slot in the first table. We then attempt to displace 12 into the second table using its hash value, finding an empty slot there. Consequently, 13 is placed in the first table where it initially collided, and the displaced 12 finds its final home in the second table
so B) Insert 13, Insert 12

Q9)

Optimize Hash Function :
 Enhance the hash function to minimize collisions by improving the distribution of values. Utilize a hash function that better spreads values across buckets, thereby decreasing the chances of multiple distinct values mapping to the same bucket.

Partitioned hash join :
Instead of using the same way of arranging information for both tables, you can choose different ways for each table. This helps make sure that when we organize the data, it's less likely that things will accidentally end up in the same place, causing problems. For example, if we have tables R and S, we could use a special rule, let's call it h1_R, for organizing R's data, and a different rule, let's call it h1_S, for organizing S's data. Even if there are some mix-ups in one table, they won't necessarily create mix-ups in the other table, making it less likely that errors will happen when we're putting things together.

B=Number of buffer pages = 75
Br : Number of blocks in the outer relation (R) = 2,400
Bs: Number of blocks in the inner relation (S) = 1,200

I/O cost = Br + [Br/B-2] * Bs   -----formula-----

By substituting we get, I/O is : 42000



Q5)
I feel Plan II is more efficient due to the following reasons:
Selectivity:
In Plan II, the selection S.c=3 is applied before the join with R, leading to a substantial reduction in the number of rows in S that need to be joined with R.
Plan I, on the other hand, applies the selection after the join, potentially working with a larger intermediate result that contains unnecessary data.

Join Order:
Plan II optimally joins S and R based on the common attribute b. This is considered a superior join order as it leverages the smaller relation (S with the selection) for the initial join.
Plan I, in contrast, joins R first and then S with the intermediate result, which may lead to suboptimal performance.

Cardinality:
The selection S.c=3 in Plan II significantly reduces the cardinality of S, directly impacting the size of the intermediate result and the total number of comparisons needed during the join with R.
Plan I might involve unnecessary comparisons in R for rows that don't have matching b values in the larger intermediate result due to the delayed selection.

In summary, Plan II, with the selection on S applied before the join and R as the outer relation, is likely to be more efficient due to its lower overall computational complexity and reduced I/O costs.





Q2)
To find the keys between 9 and 19 in the B+ tree, we have to follow 5 pointers. 
1)Start from the top (root) of the tree. Because 9 is less than 10, go left.
2)In the next level, 9 is still less than 11, so go left again.
3)Now, we find that 9 is between 8 and 10 in this part of the tree. Since you're at a leaf (end) node, you don't need to follow more pointers.
4)To find 19, start again from the top but go right this time.
5)Following this path, will chase a total of 5 pointers: 2 left pointers at the root and first level, and 1 right pointer at each level during the search.


Q3)
The largest key less than 25 whose insertion will cause a split in the hash table of Figure 2 is 24. 
The hash function h0 takes the rightmost 2 bits of the key as the hash value. So, for keys 0 to 23, the hash value h0 will be 00, 01, 10, and 11, respectively.
The hash function h1 takes the rightmost 3 bits of the key as the hash value. Therefore, for keys 0 to 27, the hash value h1 will be 000, 001, 010, 011, 100, 101, 110, and 111, respectively.

Looking at the table, we see that buckets 000 and 011 in h1 already have 4 keys each. These are the maximum number of keys allowed before a split occurs.
Keys 0, 8, 16, and 24 all have the same hash value of 000 in h1.
Therefore, inserting any key with a hash value of 000 in h1 will cause a split in bucket 000.

Among the keys with a hash value of 000, 24 is the largest number less than 25.
Therefore, inserting the key 24 will cause a split



Q4) 
B+ tree of order d = 2 containing keys 1 through 20 inclusive will be comprised of 16 nodes.
10 leaf nodes: These nodes hold the actual data, with each containing 2 keys and no pointers. 
5 intermediate nodes: These nodes act as guides, directing you to the correct leaf node based on the key value. Each intermediate node contains 2 keys and 3 pointers:
1 root node: This node serves as the starting point of the tree and has 1 key and 2 pointers:


Q8)
The minimum cost is 301 page I/Os (100 + 10 + 200 + 1).
In summary, the query plan involves file scans, an index scan, selections, and joins, with a total cost of 301 page I/Os.

Applicants table: 100 page I/Os (assuming each page holds 20 applicants)
Schools table: 10 page I/Os (assuming each page holds 10 schools)
Major table: 200 page I/Os (assuming each page holds 20 majors)
Major.id index: 1 page I/O
Joins (A.sid = S.sid and A.id = M.id)

