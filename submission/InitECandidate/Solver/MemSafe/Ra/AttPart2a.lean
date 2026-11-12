import InitECandidate.Solver.MemSafe.Ra.AttKit5
import InitECandidate.Solver.MemSafe.Exb.PlS

/-!
# `run_attempt`, after `payload_header`: `bh`, `header_hash`, `memeq`, `is_valid_versioned_hashes`, `validate_header`

`Ok2 .. En S`: the environment tracks `si`, `pl`, `hdr`; the fact set contains `S2` and is tidy and safe.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

structure Ok2 (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64) (En : Env) (S : FS) : Prop where
  en : ∀ x v, En2 si0 pl0 H x = some v → En x = some v
  sub : ∀ f, S2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD f → S f
  tidy : Tidy Z2 S
  safe : SafeS S

section p2a
variable {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64} {En : Env} {S : FS}

theorem ok2_set {x : MlS} {v : ValueHOL 64} (h1 : x ≠ nm "si") (h2 : x ≠ nm "pl") (h3 : x ≠ nm "hdr")
    (h : Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En S) :
    Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD (En.set x v) S := by
  refine ⟨fun y w hy => ?_, h.sub, h.tidy, h.safe⟩
  have hy' := h.en y w hy
  by_cases hyx : y = x
  · subst hyx
    simp only [En2, Env.set] at hy
    split_ifs at hy <;> first | (subst_vars; contradiction) | skip
    all_goals simp_all
  · rw [env_set_ne En v hyx]; exact hy'

theorem ok2_add {f0 : Fct} (hs : SafeFact f0) (ht : (∀ g w t, f0 = Fct.gobj g w t → g ∈ Z2) ∧ (∀ g w, f0 = Fct.gval g w → g ∈ Z2))
    (h : Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En S) :
    Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En (fun f => S f ∨ f = f0) :=
  ⟨h.en, fun f hf => Or.inl (h.sub f hf), tidy_add h.tidy ht, fun f hf => by
    rcases hf with hf | rfl
    · exact h.safe f hf
    · exact hs⟩

theorem ok2_congr {En : Env} {S S' : FS} (h : Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En S)
    (h1 : ∀ f, S' f → S f) (h2 : ∀ f, S f → S' f) : Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En S' :=
  ⟨h.en, fun f hf => h2 f (h.sub f hf), tidy_mono h.tidy (fun g hg => hg) h1, fun f hf => h.safe f (h1 f hf)⟩

end p2a

theorem ivPre_of_facts {Γ : Gam} {s : State σ} {si0 pl0 : BitVec 64} {o : Obj}
    (hG : G guestC (HR σ) Γ s) (hrd : rd s.memory (si0 + BitVec.ofNat 64 0) = pl0) (ho : o ∈ Γ) (hb : o.base = pl0)
    (ht : o.ty = tPL) : Exb.IvPre [Exb.Wv si0] s Γ := by
  refine ⟨si0, rfl, ?_⟩
  obtain ⟨hIv, -, -⟩ := Exb.hypPlS Γ s o hG ho ht
  rw [Exb.txF_eq hb 4, Exb.txF_eq hb 5] at hIv
  rw [hrd]
  exact hIv

end InitECandidate.Solver.MemSafe.Att
