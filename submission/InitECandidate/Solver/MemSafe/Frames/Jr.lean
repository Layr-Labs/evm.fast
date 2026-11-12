import InitECandidate.Solver.MemSafe.Frames.Bundle

/-!
# The journal global in the loop invariant (decision 1)

`state_restore` (called by `frame_epilogue` and `finish_child`), `set_code` (in `create_finish`)
and `jset` / `jdel` (opcode handlers) have the capability requirement `ReqOK` of the protected
global `journal`: it names a `Γ` journal array. `G` alone does not give it (`journal` is typed
`nptr tJOURNAL`), so the loop invariant of `run_frames` carries

* **`JrNZ s`**: the globals `jrGs = [journal, sk_buf]` are non-null words (frames7: `sk_buf`
  added, the capability global of the merged table's `destroy_storage` / `increment_nonce`;
  side conditions `JrPG C` (both protected) and `JrOut gw` (neither written)).

It does not mention `Γ`: with `G` (whose `Globs` types `journal` as `nptr tJOURNAL`) it gives the
`ReqOK` fact for every typing (`Frames/BundleJ.lean`, `reqOK_jr`). `journal` is written only by
`state_init`, so every function `run_frames` reaches keeps it: a summary core keeps it when it
is a protected global outside the signature's `gw` (`jrNZ_sumCore`).

* `QStepJ`, `QExcJ`, `QEpiJ`: the bundle posts with `JrNZ` of the final state.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- The protected global `journal`. -/
def nmJr : MlS := nm "journal"

/-- The protected global `sk_buf` (the capability global of `destroy_storage` /
`increment_nonce` in the merged fold table `ShardsJL.tab26`). -/
def nmSk : MlS := nm "sk_buf"

/-- **The protected globals `JrNZ` covers**: `journal` and `sk_buf`. Both are set once by
`state_init` / the init prefix and never written inside `run_frames`. -/
def jrGs : List MlS := [nmJr, nmSk]

theorem jrGs_cases {g : MlS} (h : g ∈ jrGs) : g = nmJr ∨ g = nmSk := by
  simpa [jrGs] using h

/-- **The journal and scratch-key globals are non-null** (frames7: `JrNZ` covers both
`journal` and `sk_buf`, main's decision 2026-11-04). -/
def JrNZ (s : State σ) : Prop := ∀ g ∈ jrGs, ∃ w, gword s g = some w ∧ nullMax ≤ w.toNat

/-- Both globals of `JrNZ` are protected. -/
def JrPG (C : Cfg) : Prop := ∀ g ∈ jrGs, g ∈ C.PG

/-- No global of `JrNZ` is in the write list `gw`. -/
def JrOut (gw : List MlS) : Prop := ∀ g ∈ jrGs, g ∉ gw

instance (C : Cfg) : Decidable (JrPG C) := by unfold JrPG; infer_instance
instance (gw : List MlS) : Decidable (JrOut gw) := by unfold JrOut; infer_instance

@[simp] theorem jrOut_iff {gw : List MlS} : JrOut gw ↔ nmJr ∉ gw ∧ nmSk ∉ gw := by
  simp [JrOut, jrGs]

theorem jrOut_mono {gw gw' : List MlS} (h : ∀ g, g ∈ gw → g ∈ gw') (h' : JrOut gw') : JrOut gw :=
  fun g hg hm => h' g hg (h g hm)

theorem jrNZ_of_gword {s t : State σ} (h : ∀ g ∈ jrGs, gword t g = gword s g) (hs : JrNZ s) :
    JrNZ t := by
  intro g hg
  obtain ⟨w, hw, hn⟩ := hs g hg
  exact ⟨w, (h g hg).trans hw, hn⟩

theorem jrNZ_of_lookup {s t : State σ}
    (h : ∀ g ∈ jrGs, t.globals.lookup g = s.globals.lookup g) (hs : JrNZ s) : JrNZ t :=
  jrNZ_of_gword (fun g hg => by unfold gword; rw [h g hg]) hs

theorem jrNZ_congr {s t : State σ} (hg : t.globals = s.globals) (hs : JrNZ s) : JrNZ t :=
  jrNZ_of_gword (fun g _ => gword_congr hg g) hs

theorem jrNZ_locFree : LocFree (σ := σ) JrNZ := fun _ _ _ =>
  ⟨jrNZ_congr rfl, jrNZ_congr rfl⟩

theorem jrNZ_locals {s : State σ} (hs : JrNZ s) (l : HolFiniteMapExact MlS (ValueHOL 64)) :
    JrNZ { s with locals := l } := jrNZ_congr rfl hs

/-- A global assignment to another global keeps `JrNZ`. -/
theorem jrNZ_setG {s : State σ} {g : MlS} (hg : g ∉ jrGs) (v : ValueHOL 64) (hs : JrNZ s) :
    JrNZ (setGlobalHOLFinite g v s) :=
  jrNZ_of_lookup (fun g' hg' => lookup_update_ne _ _ fun h => hg (h ▸ hg')) hs

theorem jrNZ_setK {s : State σ} {g : MlS} (hg : g ∉ jrGs) (v : ValueHOL 64) (hs : JrNZ s) :
    JrNZ (setKvarHOLFinite .global g v s) :=
  jrNZ_of_lookup (fun g' hg' => lookup_update_ne _ _ fun h => hg (h ▸ hg')) hs

/-- **A summary core keeps `JrNZ`** when its globals are protected and not written. -/
theorem jrNZ_sumCore {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hJ : JrPG C) (hgJ : JrOut sg.gw) (hc : SumCore C H sg PW Γ s vs r t Γ' p p')
    (hs : JrNZ s) : JrNZ t :=
  jrNZ_of_lookup (fun g hg => hc.2.2.2.2.2.2.2.1 _ (hJ g hg) (hgJ g hg)) hs

/-! ## The bundle posts with the journal -/

/-- `QStep`, and `JrNZ` after a return or an `EvmErr`. -/
def QStepJ (C : Cfg) (tEV tCK : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  QStep C tEV tCK vs s Γ r t Γ' ∧ (∀ v, r = .returned v → JrNZ t) ∧
    (∀ v, r = .exception nmEvmErr v → JrNZ t)

/-- `QExc`, and `JrNZ` after a return. -/
def QExcJ (C : Cfg) (tEV tCK : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  QExc C tEV tCK vs s Γ r t Γ' ∧ ∀ v, r = .returned v → JrNZ t

/-- `QEpi`, and `JrNZ` after a return. -/
def QEpiJ (C : Cfg) (tEV tCK : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  QEpi C tEV tCK vs s Γ r t Γ' ∧ ∀ v, r = .returned v → JrNZ t

/-- `PreInv` with the journal. -/
def PreInvJ (C : Cfg) (tEV tCK M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) :
    Prop := PreInv C tEV tCK M vs s Γ ∧ JrNZ s

/-- `PreOp` with the journal. -/
def PreOpJ (C : Cfg) (tEV tCK M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) :
    Prop := PreOp C tEV tCK M vs s Γ ∧ JrNZ s

/-- `PreFin` with the journal. -/
def PreFinJ (C : Cfg) (tEV tCK M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) :
    Prop := PreFin C tEV tCK M vs s Γ ∧ JrNZ s

end InitECandidate.Solver.MemSafe.Frames
