import InitECandidate.Solver.MemSafe.TrieStorage.C004
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.TrieStorage
variable {σ : Type}
def sh4 : ShapeHOL := .comb [.one,.one,.one,.one]
def zero4 : ExpHOL 64 := .rstruct [cw 0,cw 0,cw 0,cw 0]
def storageSuffix : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (.decCall (nm "h") .one (nm "alloc") [cw 32]
      (.seq (callD (nm "keccak256") [lv (nm "key"), cw 32, lv (nm "h")])
        (.decCall (nm "r") (.comb [.one, .one, .one]) (nm "trie_lookup") [lv (nm "node"), lv (nm "h")]
          (.seq (callD (nm "heap_release") [lv (nm "mark")])
            (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0)) (.return zero4) .skip)
              (.decCall (nm "it") sh4 (nm "rlp_decode_fully")
                [.rfield 1 (lv (nm "r")), .rfield 2 (lv (nm "r"))]
                (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "it"))) (cw 1)) (.return zero4) .skip)
                  (.seq (.ite (.cmp .lower (cw 32) (.rfield 2 (lv (nm "it"))))
                      (.raise (nm "StateErr") (cw 1)) .skip)
                    (.decCall (nm "v") sh4 (nm "u256_from_be")
                      [.rfield 1 (lv (nm "it")), .rfield 2 (lv (nm "it"))]
                      (.return (lv (nm "v")))))))))))) 

def bRoot : Nat := 330222982341023458542163817732281
def bSuffix : Nat := 330222981554140696165523986069695
theorem suffix_cost : Cost σ guestCtx storageSuffix bSuffix :=
 ArenaCost.Analyzer.analyze_sound table4_sound (by cbv)
#print axioms suffix_cost
end InitECandidate.Solver.MemSafe.TrieStorage
