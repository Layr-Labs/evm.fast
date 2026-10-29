import InitECandidate.Proofs.AllocationOracles.Chunk000
import InitECandidate.Proofs.AllocationOracles.Chunk001
import InitECandidate.Proofs.AllocationOracles.Chunk002
import InitECandidate.Proofs.AllocationOracles.Chunk003
import InitECandidate.Proofs.AllocationOracles.Chunk004
import InitECandidate.Proofs.AllocationOracles.Chunk005
import InitECandidate.Proofs.AllocationOracles.Chunk006
import InitECandidate.Proofs.AllocationOracles.Chunk007
import InitECandidate.Proofs.AllocationOracles.Chunk008
import InitECandidate.Proofs.AllocationOracles.Chunk009
import InitECandidate.Proofs.AllocationOracles.Chunk010
import InitECandidate.Proofs.AllocationOracles.Chunk011
import InitECandidate.Proofs.AllocationOracles.Chunk012
import InitECandidate.Proofs.AllocationOracles.Chunk013
import InitECandidate.Proofs.AllocationOracles.Chunk014
import InitECandidate.Proofs.AllocationOracles.Chunk015
import InitECandidate.Proofs.AllocationOracles.Chunk016
import InitECandidate.Proofs.AllocationOracles.Chunk017
import InitECandidate.Proofs.AllocationOracles.Chunk018
import InitECandidate.Proofs.AllocationOracles.Chunk019
import InitECandidate.Proofs.AllocationOracles.Chunk020
import InitECandidate.Proofs.AllocationOracles.Chunk021
import InitECandidate.Proofs.AllocationOracles.Chunk022
import InitECandidate.Proofs.AllocationOracles.Chunk023
import InitECandidate.Proofs.AllocationOracles.Chunk024
import InitECandidate.Proofs.AllocationOracles.Chunk025
import InitECandidate.Proofs.AllocationOracles.Chunk026
import InitECandidate.Proofs.AllocationOracles.Chunk027
import InitECandidate.Proofs.AllocationOracles.Chunk028
import InitECandidate.Proofs.AllocationOracles.Chunk029
import InitECandidate.Proofs.AllocationOracles.Chunk030
import InitECandidate.Proofs.AllocationOracles.Chunk031
import InitECandidate.Proofs.AllocationOracles.Chunk032
import InitECandidate.Proofs.AllocationOracles.Chunk033
import InitECandidate.Proofs.AllocationOracles.Chunk034
import InitECandidate.Proofs.AllocationOracles.Chunk035
import InitECandidate.Proofs.AllocationOracles.Chunk036
import InitECandidate.Proofs.AllocationOracles.Chunk037
import InitECandidate.Proofs.AllocationOracles.Chunk038
import InitECandidate.Proofs.AllocationOracles.Chunk039
import InitECandidate.Proofs.AllocationOracles.Chunk040
import InitECandidate.Proofs.AllocationOracles.Chunk041
import InitECandidate.Proofs.AllocationOracles.Chunk042
import InitECandidate.Proofs.AllocationOracles.Chunk043
import InitECandidate.Proofs.AllocationOracles.Chunk044
import InitECandidate.Proofs.AllocationOracles.Chunk045
import InitECandidate.Proofs.AllocationOracles.Chunk046
import InitECandidate.Proofs.AllocationOracles.Chunk047
import InitECandidate.Proofs.AllocationOracles.Chunk048
import InitECandidate.Proofs.AllocationOracles.Chunk049
import InitECandidate.Proofs.AllocationOracles.Chunk050
import InitECandidate.Proofs.AllocationOracles.Chunk051

namespace InitE
open InitECandidate.Proofs
-- Proposed colorings; the compiler validates each before using it.
def allocationOracles : List (Option (Flapjack.Spt Nat)) :=
  [AllocationOracles.chunk000, AllocationOracles.chunk001, AllocationOracles.chunk002, AllocationOracles.chunk003, AllocationOracles.chunk004, AllocationOracles.chunk005, AllocationOracles.chunk006, AllocationOracles.chunk007, AllocationOracles.chunk008, AllocationOracles.chunk009, AllocationOracles.chunk010, AllocationOracles.chunk011, AllocationOracles.chunk012, AllocationOracles.chunk013, AllocationOracles.chunk014, AllocationOracles.chunk015, AllocationOracles.chunk016, AllocationOracles.chunk017, AllocationOracles.chunk018, AllocationOracles.chunk019, AllocationOracles.chunk020, AllocationOracles.chunk021, AllocationOracles.chunk022, AllocationOracles.chunk023, AllocationOracles.chunk024, AllocationOracles.chunk025, AllocationOracles.chunk026, AllocationOracles.chunk027, AllocationOracles.chunk028, AllocationOracles.chunk029, AllocationOracles.chunk030, AllocationOracles.chunk031, AllocationOracles.chunk032, AllocationOracles.chunk033, AllocationOracles.chunk034, AllocationOracles.chunk035, AllocationOracles.chunk036, AllocationOracles.chunk037, AllocationOracles.chunk038, AllocationOracles.chunk039, AllocationOracles.chunk040, AllocationOracles.chunk041, AllocationOracles.chunk042, AllocationOracles.chunk043, AllocationOracles.chunk044, AllocationOracles.chunk045, AllocationOracles.chunk046, AllocationOracles.chunk047, AllocationOracles.chunk048, AllocationOracles.chunk049, AllocationOracles.chunk050, AllocationOracles.chunk051].flatten

theorem allocationOracles_length : allocationOracles.length = 826 := by
  simp only [allocationOracles, List.length_flatten, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil,
    AllocationOracles.chunk000_length, AllocationOracles.chunk001_length, AllocationOracles.chunk002_length, AllocationOracles.chunk003_length, AllocationOracles.chunk004_length, AllocationOracles.chunk005_length, AllocationOracles.chunk006_length, AllocationOracles.chunk007_length, AllocationOracles.chunk008_length, AllocationOracles.chunk009_length, AllocationOracles.chunk010_length, AllocationOracles.chunk011_length, AllocationOracles.chunk012_length, AllocationOracles.chunk013_length, AllocationOracles.chunk014_length, AllocationOracles.chunk015_length, AllocationOracles.chunk016_length, AllocationOracles.chunk017_length, AllocationOracles.chunk018_length, AllocationOracles.chunk019_length, AllocationOracles.chunk020_length, AllocationOracles.chunk021_length, AllocationOracles.chunk022_length, AllocationOracles.chunk023_length, AllocationOracles.chunk024_length, AllocationOracles.chunk025_length, AllocationOracles.chunk026_length, AllocationOracles.chunk027_length, AllocationOracles.chunk028_length, AllocationOracles.chunk029_length, AllocationOracles.chunk030_length, AllocationOracles.chunk031_length, AllocationOracles.chunk032_length, AllocationOracles.chunk033_length, AllocationOracles.chunk034_length, AllocationOracles.chunk035_length, AllocationOracles.chunk036_length, AllocationOracles.chunk037_length, AllocationOracles.chunk038_length, AllocationOracles.chunk039_length, AllocationOracles.chunk040_length, AllocationOracles.chunk041_length, AllocationOracles.chunk042_length, AllocationOracles.chunk043_length, AllocationOracles.chunk044_length, AllocationOracles.chunk045_length, AllocationOracles.chunk046_length, AllocationOracles.chunk047_length, AllocationOracles.chunk048_length, AllocationOracles.chunk049_length, AllocationOracles.chunk050_length, AllocationOracles.chunk051_length]
  decide
end InitE
