
## Notes

#### ArrayList Complexity of Operations
Find is worst-case O(N)
printList is O(N)
findKth is O(1)
insert and remove operations are O(N) worst case

#### LinkedList Complexity of Operations
printList or find(x) is O(N)
findKth is not longer as efficient as an array implementation due to linked structure
findKth(i) takes O(i) time and works by traversing down the list in the obvious manner

### Compare & Contrast
#### ArrayList

##### Advantages:
- get and set take constant time.

##### Disadvantages
- insertion of new items and removal of existing items is expensive.

#### LinkedList

##### Advantages
- adds and removes from the front of the list are constant-time operations.

##### Disadvantages
- is not indexable, so calls to get and set are expensive
- insertion of new items and removal of existing items is expensive.

#### Doubly LinkedList

##### Advantages
- insertion of new items and removal of existing items is cheap.
- adds and removes from the front of the list are constant-time operations.

##### Disadvantages
- is not indexable, so calls to get and set are expensive