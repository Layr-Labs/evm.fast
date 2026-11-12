import InitECandidate.Solver.MemSafe.Init.Main8

/-!
# Init: `main`'s walk, part 9 (the whole body after the inits, with cost)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

def mainBody : ProgHOL 64 := (fnEntry Guest.Software.guestFn_main).2.2.1

def dropSeq : Nat → ProgHOL 64 → ProgHOL 64
  | 0, p => p
  | n + 1, .seq _ b => dropSeq n b
  | _, p => p

/-- The part of `main` after the 14 init calls. -/
def mainRest : ProgHOL 64 := dropSeq 14 mainBody

def bTail : Nat := 1 + tbN "serialize_result" + (0 + ((1 + tbN "output_write" + 0) + (0 + 0)))
def bVerify (Bv : Nat) : Nat := 1 + Bv + bTail
def bHtrV (Bv : Nat) : Nat := (1 + tbN "htr_new_payload_request" + 0) + bVerify Bv
def bRoot (Bv : Nat) : Nat := 1 + tbN "alloc" + bHtrV Bv
def bDec (Bv : Nat) : Nat := (1 + tbN "decode_host_input" + bTail) + bRoot Bv
def bMz (Bv : Nat) : Nat := (1 + tbN "memzero" + 0) + bDec Bv
def bRest (Bv : Nat) : Nat := 1 + tbN "alloc" + (1 + tbN "alloc" + bMz Bv)

abbrev lvv (x : String) : ExpHOL 64 := .var .local (nm x)

def mainHP : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "serialize_result") [lvv "out", lvv "z32", .const 0, .const 0, .const 0]
    (.seq (.storeByte (.op .add [lvv "out", lvv "n"]) (lvv "err_code"))
      (.seq (.call (some (none, none)) (nm "output_write") [lvv "out", .op .add [lvv "n", .const 1]])
        (.seq (.extCall (nm "halt") .baseAddr (.const 0) .baseAddr (.const 0)) (.return (.const 1)))))

def mainTAIL : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "serialize_result")
    [lvv "out", lvv "root", lvv "succ", .load .one (.op .add [lvv "si", .const 88]), .const 5377]
    (.seq (.storeByte (.op .add [lvv "out", lvv "n"]) (.var .global (nm "fail_code")))
      (.seq (.call (some (none, none)) (nm "output_write") [lvv "out", .op .add [lvv "n", .const 1]])
        (.seq (.extCall (nm "halt") .baseAddr (.const 0) .baseAddr (.const 0)) (.return (.const 0)))))

def mainRestE : ProgHOL 64 :=
  .decCall (nm "out") .one (nm "alloc") [.const 256]
    (.decCall (nm "z32") .one (nm "alloc") [.const 32]
      (.seq (.call (some (none, none)) (nm "memzero") [lvv "z32", .const 32])
        (.dec (nm "si") .one (.const 0)
          (.dec (nm "err_code") .one (.const 0)
            (.seq (.call (some (some (.local, nm "si"), some (nm "SszErr", nm "err_code", mainHP)))
                (nm "decode_host_input") [])
              (.decCall (nm "root") .one (nm "alloc") [.const 32]
                (.seq (.call (some (none, none)) (nm "htr_new_payload_request") [lvv "si", lvv "root"])
                  (.decCall (nm "succ") .one (nm "verify_stateless_new_payload") [lvv "si"] mainTAIL))))))))

theorem mainRest_eq : mainRest = mainRestE := by
  conv => lhs; cbv
  conv => rhs; cbv
  rfl

theorem cost_rest {Bv : Nat}
    (hV : CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi VerPre Bv) :
    Inv.CostP σ guestCtx WIp mainRest (bRest Bv) := by
  rw [mainRest_eq]
  refine cost_alloc_wi (hav := by rfl) ?_
  refine cost_alloc_wi (hav := by rfl) ?_
  refine Inv.costP_seq (R := WIp) (Inv.costP_of_cost (cost_tb "memzero" tb_mz)) hoare_mz ?_
  refine cost_decs ?_
  refine cost_decode_step ?_
  refine cost_root_step ?_
  refine cost_htr_verify hV ?_
  intro s v st
  exact (cost_tail (σ := σ)).pre (fun _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Init
