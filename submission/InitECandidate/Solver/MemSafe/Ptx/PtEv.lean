import InitECandidate.Solver.MemSafe.Ptx.PtGl

/-!
# F3d: exact evaluation of expressions (`EvI`: if the evaluation succeeds, it yields this value)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def EvI (s : State σ) (e : ExpHOL 64) (v : ValueHOL 64) : Prop := ∀ w, ev s e = some w → w = v

theorem evI_cw (s : State σ) (n : Nat) : EvI s (cw n) (.val (.word (BitVec.ofNat 64 n))) := by
  intro w h; rw [ev_cw] at h; exact (Option.some.inj h).symm

theorem evI_lv {s : State σ} {x : MlS} {v : ValueHOL 64} (h : s.locals.lookup x = some v) : EvI s (lv x) v := by
  intro w hw; have : ev s (lv x) = some v := h
  rw [this] at hw; exact (Option.some.inj hw).symm

theorem evI_gv {s : State σ} {g : MlS} {v : ValueHOL 64} (h : s.globals.lookup g = some v) : EvI s (gv g) v := by
  intro w hw; have : ev s (gv g) = some v := h
  rw [this] at hw; exact (Option.some.inj hw).symm

theorem evI_add {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) : EvI s (.op .add [a, b]) (.val (.word (x + y))) := by
  intro w h
  obtain ⟨x', y', hx, hy, rfl⟩ := Spec.Inv.ev_add2_inv h
  have := ha _ hx; have := hb _ hy
  simp_all

theorem evI_sub {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) : EvI s (.op .sub [a, b]) (.val (.word (x - y))) := by
  intro w h
  obtain ⟨x', y', hx, hy, rfl⟩ := Spec.Inv.ev_sub2_inv h
  have := ha _ hx; have := hb _ hy
  simp_all

theorem evI_mul {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) : EvI s (.panop .mul [a, b]) (.val (.word (x * y))) := by
  intro w h
  obtain ⟨x', y', hx, hy, rfl⟩ := Spec.Inv.ev_mul2_inv h
  have := ha _ hx; have := hb _ hy
  simp_all

theorem evI_ld {s : State σ} {a : ExpHOL 64} {w : BitVec 64} (ha : EvI s a (.val (.word w))) :
    EvI s (.load .one a) (.val (.word (rd s.memory w))) := by
  intro v h
  obtain ⟨w', hw', -, -⟩ := ev_load_one h
  have := ha _ hw'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
  subst this
  exact HtabEntries.ev_ld hw' h

theorem evI_rf {s : State σ} {e : ExpHOL 64} {ws : List (BitVec 64)} (he : EvI s e (wv ws)) {i : Nat}
    (hi : i < ws.length) : EvI s (.rfield i e) (.val (.word ws[i])) := by
  intro v h
  have hs : ∃ x, ev s e = some (ValueHOL.rStruct x) := by
    simp only [ev, evalHOLExact] at h ⊢
    split at h
    · rename_i x hx; exact ⟨x, hx⟩
    · simp at h
  obtain ⟨x, hx⟩ := hs
  have := he _ hx
  rw [this] at hx
  rw [ev_rfield_wv hx hi] at h
  exact (Option.some.inj h).symm

theorem evI_add3 {s : State σ} {a b c : ExpHOL 64} {x y z : BitVec 64} (ha : EvI s a (.val (.word x)))
    (hb : EvI s b (.val (.word y))) (hc : EvI s c (.val (.word z))) :
    EvI s (.op .add [a, b, c]) (.val (.word (x + (y + z)))) := by
  intro w h
  obtain ⟨x', y', z', hx, hy, hz, rfl⟩ := Spec.Inv.ev_add3_inv h
  have := ha _ hx; have := hb _ hy; have := hc _ hz
  simp_all

end InitECandidate.Solver.MemSafe.Ptx
