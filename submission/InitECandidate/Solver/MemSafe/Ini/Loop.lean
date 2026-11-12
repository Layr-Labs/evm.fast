import InitECandidate.Solver.MemSafe.Ini.Rules
import InitECandidate.Solver.MemSafe.Ini.Code

/-!
# `nodedb_build`: the insertion loop

State of the loop at counter `I`: the locals `kvL`, `I ≤ n`, and for some heap pointer `H` the net effect
`Eff` since the entry and the table facts `Tbl` (every leaf value is `slice_arr + 16 j`, `j < I`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Leaves (DomTop)

variable {σ : Type} {X : Ctx 64}

def LVi (kv : List (MlS × ValueHOL 64)) (m : LocalsH) : Prop := ∀ q ∈ kv, m.lookup q.1 = some q.2

def kvL (A N C T I : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "i", .val (.word I)), (nm "t", .val (.word T)), (nm "cap", .val (.word C)),
   (nm "slice_arr", .val (.word A)), (nm "n", .val (.word N))]

theorem lvi_ev {kv : List (MlS × ValueHOL 64)} {s : State σ} (h : LVi kv s.locals) {x : MlS}
    {v : ValueHOL 64} (hm : (x, v) ∈ kv) : ev s (lv x) = some v := h _ hm

/-- The static facts about the entry state. -/
structure Sta (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (N ks kp W : BitVec 64) : Prop where
  hK : KS s0 Γ0 ks kp W
  hp : ptrsOf s0 = some p0
  hord : p0.Ordered
  hscell : ∀ x : BitVec 64, SCell Types.guestC Γ0 x → x.toNat < p0.hp ∨ heapEnd ≤ x.toNat
  hN : N.toNat < 2 ^ 24

theorem sta_wout {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} {N ks kp W : BitVec 64}
    (h : Sta s0 Γ0 p0 N ks kp W) :
    ∀ a : BitVec 64, W.toNat ≤ a.toNat → a.toNat < W.toNat + 32 →
      ¬ (p0.hp ≤ a.toNat ∧ a.toNat < heapEnd) := by
  intro a h1 h2 ⟨h3, h4⟩
  have hc : (BitVec.ofNat 64 (a.toNat / 8 * 8)).toNat = a.toNat / 8 * 8 := cell8 a
  have hov : Overlap W.toNat 32 (BitVec.ofNat 64 (a.toNat / 8 * 8)) := by
    have := h.hK.W8
    refine ⟨by rw [hc]; omega, by rw [hc]; omega, by rw [hc]; omega⟩
  have hs := h.hscell _ (h.hK.cW _ hov)
  rw [hc] at hs
  have h8 := h.hord.2.2.2.2.2.1
  have he8 : heapEnd % 8 = 0 := by decide
  omega

section loop
variable (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (A N C T : BitVec 64)

def JL (I : BitVec 64) (t : State σ) : Prop :=
  LVi (kvL A N C T I) t.locals ∧ I.toNat ≤ N.toNat ∧
    ∃ H, Eff s0 t Γ0 p0 H ∧ Tbl p0 A T I.toNat t H

def JS (I : BitVec 64) (t : State σ) : Prop := JL s0 Γ0 p0 A N C T I t ∧ I.toNat < N.toNat

def JM (I : BitVec 64) (t : State σ) : Prop :=
  LVi (kvL A N C T I) t.locals ∧ I.toNat < N.toNat ∧
    ∃ H, Eff s0 t Γ0 p0 H ∧ Tbl p0 A T (I.toNat + 1) t H

def FinQ (t : State σ) (v : ValueHOL 64) : Prop :=
  ∃ H T, v = .val (.word T) ∧ Eff s0 t Γ0 p0 H ∧ Tbl p0 A T N.toNat t H

theorem congrF_finQ : CongrF (FinQ s0 Γ0 p0 A N) := by
  rintro t t' v hm hg hd hb ⟨H, T, hv, he, ht⟩
  exact ⟨H, T, hv, eff_congr he hm hg hd hb, tbl_congr ht hm hd hb⟩

variable {s0 Γ0 p0 A N C T}

theorem ev_el {s : State σ} {I : BitVec 64} (h : LVi (kvL A N C T I) s.locals) :
    ev s ndbEl = some (.val (.word (A + I * 16#64))) :=
  ev_add2 (lvi_ev h (by simp [kvL])) (ev_mul2 (lvi_ev h (by simp [kvL])) (ev_cw s 16))

theorem ev_el8 {s : State σ} {I : BitVec 64} (h : LVi (kvL A N C T I) s.locals) :
    ev s ndbEl8 = some (.val (.word (A + (I * 16#64 + 8#64)))) :=
  ev_add3 (lvi_ev h (by simp [kvL])) (ev_mul2 (lvi_ev h (by simp [kvL])) (ev_cw s 16)) (ev_cw s 8)

theorem ev_hs {s0 s : State σ} {Γ0 : Gam} {p0 : Ptrs} {H ks kp W : BitVec 64} (he : Eff s0 s Γ0 p0 H)
    (hK : KS s0 Γ0 ks kp W) : ev s (gv (nm "mpt_hash_scratch")) = some (.val (.word W)) := by
  have h1 := gw_eq (he.glob (nm "mpt_hash_scratch") (by decide))
  have h2 : gword s (nm "mpt_hash_scratch") = some W := by rw [h1]; exact hK.gW
  exact AllocImpl.lookup_of_gword h2

end loop

end InitECandidate.Solver.MemSafe.Ini
