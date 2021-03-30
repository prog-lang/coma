import Test.Tasty
import Test.Tasty.Hspec

import qualified CsvTest
import qualified ViktorTest
import qualified WasifTest



-- MAIN


main :: IO ()
main = do

  csvParse <- testSpec "Parse" CsvTest.specCsvParse
  problem1 <- testSpec "#1" ViktorTest.problem1
  problem2 <- testSpec "#2" WasifTest.problem2
  problem3 <- testSpec "#3" WasifTest.problem3

  defaultMain $
    testGroup "All Tests"
      [ testGroup "CSV"
        [ csvParse ]
      , testGroup "Problems"
        [ problem1
        , problem2
        , problem3
        ]
      ]
