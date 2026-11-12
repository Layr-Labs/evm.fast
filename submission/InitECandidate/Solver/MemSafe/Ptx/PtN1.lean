import InitECandidate.Solver.MemSafe.Ptx.PtM11

/-!
# F3e: `htab_new` (`hdecHtabNew`) and `htab_set` rules
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

theorem callOK_eq2 {E : PtE σ} {En : Env} {S : FS} {KL CP : Nat}
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) (th : Nat) :
    CallOK E En S (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ [] [cw KL, cw CP] where
  csok := csOK_nil
  gw := ⟨by simp, by simp⟩
  jo := by intro g _ h; simp at h
  jn := by intro g h; simp at h
  fin := htab_in_all
  argsok := by
    intro s hpa vs hvs D Γ p hr hL
    obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    have hx' := evI_cw s KL x hx
    have hy' := evI_cw s CP y hy
    subst hx' hy'
    exact argsOK_eq2
  memok := by
    intro s hpa vs hvs g hg a hrd hcells
    exact not_argCells_eq2 vs hcells
  globok := hGl

/-- **`var rn = htab_new(KL, CP); k`**: the result is a header object of type `th`. -/
theorem hdecHtabNew {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS} {KL CP th : Nat} {k : ProgHOL 64} (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ [])
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) (addF S [Fct.obj w th 0])) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "htab_new") [cw KL, cw CP] k) QT := by
  refine hdecCallC hQT hf (callOK_eq2 hGl th) (fun v f => ∃ w, v = .val (.word w) ∧ f = Fct.obj w th 0) ?_ ?_
  · intro s vs callee v st D Γ Γ' p p' hr hL hstep hrun hc hsh f ⟨w, hv, hf'⟩
    subst hv hf'
    have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.fits (.ptr th)) w rfl (by simp [flattenHOL])
    obtain ⟨o, ho, hb, ht⟩ := hret
    exact ⟨o, ho, hb, ht, Nat.zero_le _⟩
  · intro v hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoare_pre (hk w) fun t _ ht => pa_mono ht (fun x v h => h) ?_
    intro f hf
    rcases hf with hf | hf
    · exact Or.inl hf
    · exact Or.inr ⟨w, rfl, by simpa using hf⟩


theorem hset_fin : ptAllNames.contains (nm "htab_set") = true := by decide_cbv

/-- `CallOK` for `htab_set(t, key, v)`: `t` a header object of type `th`, `key` a safe buffer of at least `n` bytes. -/
theorem callOK_hset {E : PtE σ} {En : Env} {S : FS} {args : List (ExpHOL 64)} {th n : Nat} {cs : List Cap}
    (hcs : CsOK cs)
    (hargs : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs →
      ∃ (aaw kw vw : BitVec 64) (m : Nat), vs = [.val (.word aaw), .val (.word kw), .val (.word vw)] ∧
        S (Fct.obj aaw th 0) ∧ S (Fct.bufok0 kw m) ∧ n ≤ m)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    CallOK E En S (nm "htab_set") ⟨[.fits (.ptr th), .buf n, .any], [], [], true⟩ cs args := by
  refine callOK_gen hcs ⟨by simp, by simp⟩ (by intro g _ h; simp at h) (by intro g h; simp at h) hset_fin ?_ ?_ ?_ hGl
  · intro s hpa vs hvs D Γ p hr hL
    obtain ⟨aaw, kw, vw, m, rfl, ho, hb, hle⟩ := hargs s hpa vs hvs
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i
    · simp at hpt hv; subst hpt hv
      obtain ⟨o, ho', hb', ht', -⟩ := hL _ ho
      exact ⟨aaw, rfl, o, ho', hb', ht'⟩
    · simp at hpt hv; subst hpt hv
      exact ⟨kw, rfl, bufOK_le' (hL _ hb).1 hle⟩
    · simp at hpt; subst hpt; trivial
    · simp at hpt
  · intro s hpa vs hvs i w' m' hw hm
    obtain ⟨aaw, kw, vw, m, rfl, ho, hb, hle⟩ := hargs s hpa vs hvs
    rcases i with _ | _ | _ | i <;> simp at hm
    subst hm
    simp [argW, wordOf] at hw; subst hw
    exact ⟨m, hb, hle⟩
  · intro i j c d h
    rcases i with _ | _ | _ | i <;> simp at h

end InitECandidate.Solver.MemSafe.Ptx
