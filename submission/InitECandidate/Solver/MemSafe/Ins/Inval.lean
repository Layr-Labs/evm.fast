import InitECandidate.Solver.MemSafe.Dn.Final

set_option autoImplicit false

/-!
# `node_invalidate` at `guestHooksR`

`node_invalidate(nd)` zeroes the cache slots 1 to 3 of a node. Those slots are `scalar` in every
node type, so the stores are `WCell` stores (`PW = False`). The argument is `fits nodeU` (the
fold table's `buf 32` is unusable for `Γ` nodes, whose slot 0 is `prot`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

def niSig : Sig := ⟨[.fits Types.nodeU], [], [], false⟩

theorem sumSpecA_node_invalidate_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "node_invalidate") niSig
      (fun _ _ _ => True) (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun _ _ _ _ _ _ => True) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 _ ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := Spec.lookupCode_one Spec.Mpt.code_node_invalidate hl
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) niSig [] [A] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hA
  have hnd : s0.locals.lookup (nm "nd") = some (.val (.word N)) := by rw [hloc]; exact hla
  have hfit : ∀ Γ : Gam, Fits Γ Types.nodeU N → True := fun _ _ => trivial
  refine hoareG_conseq (P := GI a (fun m => m.lookup (nm "nd") = some (.val (.word N)))
      (fun Γ _ _ => Fits Γ Types.nodeU N))
    (Q := GP a (fun m => m.lookup (nm "nd") = some (.val (.word N)))
      (fun Γ _ _ => Fits Γ Types.nodeU N)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ True)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨hloc ▸ hla, Γ0, p0, ext_refl _, hh, scrOld_refl _, ?_⟩
    have := ha.hargs0
    obtain ⟨-, h⟩ := this
    obtain ⟨w, hw, hf⟩ := h 0 (.fits Types.nodeU) (.val (.word N)) rfl rfl
    simp [wordOf] at hw
    subst hw
    exact hf
  · intro r t _ _ h
    exact gp_final h
  unfold Spec.Mpt.invalBody
  have hst : ∀ j : Nat, 1 ≤ j → j ≤ 3 → ∀ (e : ExpHOL 64), e = cw 0 →
      HoareG σ guestCtx (GI a (fun m => m.lookup (nm "nd") = some (.val (.word N)))
        (fun Γ _ _ => Fits Γ Types.nodeU N))
        (.store (.op .add [lv (nm "nd"), cw (8 * j)]) e)
        (GP a (fun m => m.lookup (nm "nd") = some (.val (.word N)))
        (fun Γ _ _ => Fits Γ Types.nodeU N) (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ True)) := by
    intro j h1 h3 e he
    subst he
    exact gp_stSCH ha rfl (x := nm "nd") (B := N) (fun m h => h) (by simp only [nullMax]; omega)
      (fun s Γ q hh' hE => nodeU_slot hh' hE ⟨h1, h3⟩)
      (fun s v _ hv => by rw [ev_cw] at hv; exact ⟨_, (Option.some.inj hv).symm⟩)
      (fun _ _ _ _ _ _ hE _ _ _ _ => hE)
  refine gp_seq (hst 1 (by omega) (by omega) _ rfl) ?_
  refine gp_seq (hst 2 (by omega) (by omega) _ rfl) ?_
  refine gp_seq (hst 3 (by omega) (by omega) _ rfl) ?_
  exact gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ⟨retOK_nil, trivial⟩)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_node_invalidate_G
