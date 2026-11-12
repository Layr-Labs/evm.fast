import InitECandidate.Solver.MemSafe.Fq.Full
import InitECandidate.Solver.MemSafe.Frames.EvSum
import InitECandidate.Solver.MemSafe.Frames.GkMemJL

/-!
# rpG: gas monotonicity of the `pre_*` bodies (definitions)

`capE` is the capability list `[ev with no writable slot]`: an activation with it may write no
`prot` cell of the running EV record, in particular not `GAS_LEFT` (slot 8).
`sk` is a decidable check on the spine of a `pre_*` body: `dec` / `decCall` / `seq` of
checker-accepted statements, up to the first `charge_gas(e);` whose continuation the checker
accepts again, under the same capability-free environment.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

/-- The capability of the running EV record with no writable slot. -/
def capE : List Cap := [⟨nm "ev", 0, [], false⟩]

/-- The checking table: the fold table plus `fq12_inv` and the pairing check. -/
abbrev gTab : CTab := Fq.pcTab

/-- The checker's environment for the gas pass. -/
def gE : CEnv := ⟨upg guestC capE, gTab, Pre.preSig, capE⟩

/-- The statement `charge_gas(e);` (one argument). -/
def cgOK : ProgHOL 64 → Bool
  | .call (some (none, none)) f args => decide (f = nm "charge_gas") && args.length == 1
  | _ => false

theorem cgOK_spec {p : ProgHOL 64} (h : cgOK p = true) :
    ∃ args, p = .call (some (none, none)) (nm "charge_gas") args ∧ args.length = 1 := by
  match p, h with
  | .call (some (none, none)) f args, h =>
      simp only [cgOK, Bool.and_eq_true, decide_eq_true_eq, beq_iff_eq] at h
      exact ⟨args, by rw [h.1], h.2⟩

/-- The spine check. -/
def sk (E : CEnv) (A : AEnv) : ProgHOL 64 → Bool
  | .seq p q =>
      if cgOK p then A.T.isEmpty && (chk E A q).isSome
      else match chk E A p with
        | some ⟨some A', none, none⟩ => sk E A' q
        | _ => false
  | .dec x sh e b => sk E ⟨setL x (bindAV sh (aev E.C A chkFuel e)) A.L, A.T⟩ b
  | .decCall x sh f args k => match markRg f with
      | some _ => false
      | none => match findSig E A f (args.map (aev E.C A chkFuel)) with
          | some sg => sk E (bindRes A (args.map (aev E.C A chkFuel)) sg sh x) k
          | none => false
  | _ => false

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.cgOK_spec
