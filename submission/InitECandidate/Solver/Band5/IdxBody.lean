import InitECandidate.Solver.Band5.GptsSumm

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-!
# Band item #18: `idx_start_storage` (body, code entry, suffix cost)

```
fun {1,1,1,1} idx_start_storage(1 addr, 1 key) {
  var 1 kb = bal_key_buf;
  st_le64(kb, bal_index);
  memcpy(kb + 8, addr, 20);
  memcpy(kb + 28, key, 32);
  var {1,1} m = htab_get(bal_idx_stor, kb);
  if m.0 != 0 { return lds {1,1,1,1} (m.1); }
  var {1,1,1,1} v = get_pre_tx_storage(addr, key);
  var 1 rec = alloc(32);
  st rec, v;
  st_le64(kb, bal_index);
  memcpy(kb + 8, addr, 20);
  memcpy(kb + 28, key, 32);
  htab_set(bal_idx_stor, kb, rec);
  return v; }
```
-/

namespace InitECandidate.Solver.Band5
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.Band3

variable {σ : Type}

def gBalIndex : ExpHOL 64 := .var .global (nm "bal_index")
def gBalStor : ExpHOL 64 := .var .global (nm "bal_idx_stor")

def kbAdd (off : Nat) : ExpHOL 64 := .op .add [lv (nm "kb"), cw off]

def isStLe : ProgHOL 64 := callD (nm "st_le64") [lv (nm "kb"), gBalIndex]
def isCpAddr : ProgHOL 64 := callD (nm "memcpy") [kbAdd 8, lv (nm "addr"), cw 20]
def isCpKey : ProgHOL 64 := callD (nm "memcpy") [kbAdd 28, lv (nm "key"), cw 32]

/-- Everything after `get_pre_tx_storage`. -/
def isSuf : ProgHOL 64 :=
  .decCall (nm "rec") .one (nm "alloc") [cw 32]
    (.seq (.store (lv (nm "rec")) (lv (nm "v")))
      (.seq isStLe (.seq isCpAddr (.seq isCpKey
        (.seq (callD (nm "htab_set") [gBalStor, lv (nm "kb"), lv (nm "rec")])
          (.return (lv (nm "v"))))))))

def isBody : ProgHOL 64 :=
  .dec (nm "kb") .one (.var .global (nm "bal_key_buf"))
    (.seq isStLe (.seq isCpAddr (.seq isCpKey
      (.decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [gBalStor, lv (nm "kb")]
        (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "m"))) (cw 0))
            (.return (.load sh4 (.rfield 1 (lv (nm "m"))))) .skip)
          (.decCall (nm "v") sh4 (nm "get_pre_tx_storage") [lv (nm "addr"), lv (nm "key")]
            isSuf)))))) 

theorem entry_is : fnEntry Guest.Software.guestFn_idx_start_storage =
    (nm "idx_start_storage", params_wgs, isBody, sh4) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_is : guestCode (nm "idx_start_storage") = some (params_wgs, isBody, sh4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 423) (by decide)) ⟨_, rfl⟩
    entry_is

def sufB : Nat := 340282366920938464588625995928050860151

/-- The all-states suffix after `get_pre_tx_storage`. -/
theorem cost_suf : Cost σ guestCtx isSuf sufB :=
  cost_guest_of_costA (by decide_cbv)

end InitECandidate.Solver.Band5

#print axioms InitECandidate.Solver.Band5.cost_suf
