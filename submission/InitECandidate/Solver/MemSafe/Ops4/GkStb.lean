import InitECandidate.Solver.MemSafe.Frames.OpMem
import InitECandidate.Solver.MemSafe.Rpg.Gas1
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false

/-!
# Ops4: a byte store into a `scalar` cell on `GK`

`hoareG_gkStb`: `st8 a, v; k` on `GK d` when the (word-aligned) written cell is an `SCell` of the
chain's typing. `GK` is kept by feeding the store to `kc_coreK` as a fabricated footprint-free
call summary (`Pre.preSig`, no `prot` write).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem scell_wcell {C : Cfg} {Γ : Gam} {x : BitVec 64} (h : SCell C Γ x) : WCell C Γ x := by
  obtain ⟨o, ho, k, hk, hsc, he⟩ := h
  exact ⟨o, ho, k, hk, by rw [hsc]; decide, he⟩

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **`st8 a, v; k`** on `GK d`. -/
theorem hoareG_gkStb (hfs : fs = (e, c) :: rest) {ea ev' : ExpHOL 64} {k : ProgHOL 64}
    {P : State σ → Prop} {d : Nat} {b' : Bool}
    (hP0 : ∀ u, P u → KJ d u ∧ ∀ w, ev u ea = some (.val (.word w)) → ∀ Γ1 p1,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ1 u → ptrsOf u = some p1 →
      ChainL guestC tEV tCK Γ1 u fs → SCell guestC Γ1 (panByteAlignHOL w))
    (hk : HoareG σ guestCtx (fun t => ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        ∀ j ∈ evProtSlots, fld t.memory e (8 * j) = fld u.memory e (8 * j)) k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.seq (.storeByte ea ev') k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hCfg : CfgOK guestC := (Rec.foldOK_guestR (σ := σ)).hC
  refine hoareG_seq (R := fun ro t => (ro = none → ∃ u, P u ∧ t.locals = u.locals ∧ KJ d t ∧
        ∀ j ∈ evProtSlots, fld t.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_storeByte ?_) (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pre hk fun t _ h => h.1 rfl)
  intro u _ hu w x mem hw hx hst
  refine ⟨fun _ => ⟨u, hu, rfl, ?_⟩, fun r hr => by cases hr⟩
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := (hP0 u hu).1
  have hsc := (hP0 u hu).2 w hw Γ1 p1 hrun.2.2.2.2.2.1 hrun.2.1 hch
  obtain ⟨-, hmod⟩ := storeByte_cell hst
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hH := hF.hooks
  have hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) Pre.preSig (fun _ _ Γ => Γ = Γ1)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ (fun _ _ _ _ => False) vs s Γ a)
      (fun _ _ _ _ _ _ => True) []
      (callEntryStateHOLFinite u u.locals) (.returned (.val (.word 0))) { u with memory := mem } := by
    intro _ _ Γ hGΓ ⟨p, hp, hargs⟩ hPre
    subst hPre
    refine ⟨Γ, p, p, ?_, trivial⟩
    have hpt : ptrsOf ({ u with memory := mem } : State σ) = some p := by
      exact (ptrsOf_congr rfl).trans hp
    refine ⟨hp, hpt, mono_refl p, ext_refl _, newFresh_refl _ _ _, ?_, ?_, fun _ _ _ => rfl,
      fun _ => newFresh_refl _ _ _, fun _ _ => Struct.retOK_nil _⟩
    · refine G_write hH hCfg hGΓ (by rw [hpt, hp]) (fun g k _ => rfl) (fun g _ => rfl) rfl rfl
        (R := fun c => c = panByteAlignHOL w) hmod ?_ ?_
      · intro y hy
        subst hy
        exact Or.inr (scell_wcell hsc)
      · intro o ho k hk hy
        obtain ⟨o', ho', k', hk', hsc', he'⟩ := hsc
        obtain ⟨q, hq, hord, hL, -⟩ := id hG1
        obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' (hy.trans he')
        rw [hsc']
        trivial
    · intro y hy
      exact hmod y (fun h => hy (Or.inl (h ▸ scell_wcell hsc)))
  have hfk : ({ u with memory := mem } : State σ).globals.lookup gFrame =
      (callEntryStateHOLFinite u u.locals).globals.lookup gFrame := rfl
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hkE, -⟩ := kc_coreK hF hfs
    (sg := Pre.preSig) (ks := []) (fun g h => by simp [Pre.preSig] at h) (by simp [Pre.preSig])
    (by simp [Pre.preSig, jrOut_iff]) (by decide) (by decide) (by decide) hrun hch hE hJ hR hfk
    (by simp [Good]) (by simp [Abortive]) Rpg.argsOK_nil rfl (fun a _ h => h.elim)
    (Or.inl ⟨by decide, by decide⟩) (Or.inl ⟨by decide, by decide⟩)
  refine ⟨⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩, fun j hj => hkE j hj (by simp)⟩
  rw [hact2]; rcases hact0 with h | h
  · exact Or.inl h
  · exact Or.inr (by omega)

end steps

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.hoareG_gkStb
