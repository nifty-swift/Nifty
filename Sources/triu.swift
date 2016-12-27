/***************************************************************************************************
 *  triu.swift
 *
 *  This file provides functionality for retrieving the upper triangular part of a matrix.
 *
 *  Author: Philip Erickson
 *  Creation Date: 26 Dec 2016
 *
 *  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except
 *  in compliance with the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software distributed under the 
 *  License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either 
 *  express or implied. See the License for the specific language governing permissions and 
 *  limitations under the License.
 *
 *  Copyright 2016 Philip Erickson
 **************************************************************************************************/

// TODO: must be a more efficient way to do this...

// TODO: MATLAB allows specifying the kth diagonal... do that too

// TODO: provide a triul function that splits one matrix into two?

/// Return the upper triangular part of a given matrix.
///
/// - Parameters:
///      - A: given matrix
/// - Returns: upper triangular part
public func triu(_ A: Matrix) -> Matrix
{
    var U = A
    for r in 0..<U.rows
    {
        for c in 0..<U.columns
        {
            if r > c
            {
                U[r,c] = 0
            }
        }
    }

    return U
}