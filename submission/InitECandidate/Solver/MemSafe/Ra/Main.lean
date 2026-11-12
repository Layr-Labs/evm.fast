import InitECandidate.Solver.MemSafe.Ra.WinG

set_option autoImplicit false

/-!
# `recover_authority`: the summary (sonnet-ra)

```lean
theorem sumSpecA_recover_authority_G :
  SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "recover_authority")
    ⟨[.any], [], [], true⟩ (fun vs s Γ => RaPre vs s Γ) (fun _ _ _ _ => False)
    (fun _ _ _ r t Γ' => ∀ v, r = .returned v → ∀ p', ptrsOf t = some p' → ∃ w, v = .val (.word w) ∧
      (w = 0 ∨ w.toNat % 8 = 0 ∧ BufOK Types.guestC Γ' p' w.toNat 20))
```
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type} {X : Ctx 64}

def RaPre (vs : List (ValueHOL 64)) (_s : State σ) (Γ : Gam) : Prop :=
  ∃ a : BitVec 64, vs = [.val (.word a)] ∧
    ∃ x ∈ Γ, x.ty = Types.tAUTH ∧ x.lo ≤ a.toNat ∧ a.toNat + 120 ≤ x.hi

/-- The body, under the entry typing (no use of the `RaPre` fact is needed). -/
theorem sumSpecA_recover_authority_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "recover_authority")
      ⟨[.any], [], [], true⟩ (fun vs s Γ => RaPre vs s Γ) (fun _ _ _ _ => False)
      (fun _ _ _ r t Γ' => ∀ v, r = .returned v → ∀ p', ptrsOf t = some p' → ∃ w, v = .val (.word w) ∧
        (w = 0 ∨ w.toNat % 8 = 0 ∧ BufOK Types.guestC Γ' p' w.toNat 20)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_mono (Pre := fun _ _ _ => True) (PW := fun _ _ _ _ => False)
    (sumSpecA_of_gp2 (Pre := fun _ _ _ => True) (sg := raSig)
      (Rx := fun _ Γ' p' _ v => ∃ w : BitVec 64, v = .val (.word w) ∧
        (w = 0 ∨ w.toNat % 8 = 0 ∧ BufOK Types.guestC Γ' p' w.toNat 20))
      hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_) (fun _ _ _ _ => trivial) (fun _ _ _ _ h => h)
    (fun vs s Γ r t Γ' h v hv p'' hp'' => ?_)
  swap
  · obtain ⟨p', hp', hx⟩ := h v hv
    rw [hp''] at hp'
    cases hp'
    exact hx
  intro vs body callee rs hl s0 hs0 hloc Γ0 p0 _ ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_raD hl
  obtain ⟨d, rfl⟩ : ∃ d, vs = [d] := by
    match vs, hlen with
    | [d], _ => exact ⟨d, rfl⟩
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one (hbind 0 (by decide) (by simp)).2
  have hauth := (hbind 0 (by decide) (by simp)).1
  have ha' : ActOK (aR σ [.val (.word A)] s0 Γ0 p0) guestCtx := ha
  have hh' : Heap (aR σ [.val (.word A)] s0 Γ0 p0) Γ0 p0 s0 := hh
  set a := aR σ [.val (.word A)] s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hL0 : LK [(nm "auth", .val (.word A))] s0.locals := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    subst hp
    rw [hloc]; exact hauth
  refine hoareG_conseq (P := GI a (LK [(nm "auth", .val (.word A))]) (fun _ _ _ => True))
    (Q := GP a (fun _ => False) (fun _ _ _ => True) RaRv) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hL0, Γ0, p0, ext_refl _, hh', scrOld_refl _, trivial⟩
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', e1, e2, e3, e4⟩ := gp_final h r' hr hna
    exact ⟨Γ', p', e1, e2, fun v hv => ⟨retOK_nil, e4 v hv⟩⟩
  unfold raDef
  -- var yp = lds 1 (auth + 48)
  refine gp_decV ha'.hH (L1 := fun v m => LK ((nm "yp", v) :: [(nm "auth", .val (.word A))]) m)
    (E1 := fun _ _ _ _ => True) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s hs hL v hv => lk_upd_gen (s := s) hL (by simp) (by ra_rest [List.mem_cons]))
    (fun _ _ _ _ _ _ _ _ _ => trivial) ?_ (fun _ _ _ h => h.elim)
  intro YP
  refine gp_seq (gp_iteRet0 ha'.hH (fun Γ q M _ => raRv_zero Γ q M)) ?_
  -- var r = lds {1,1,1,1} (auth + 56)
  refine gp_decV ha'.hH
    (L1 := fun v m => LK ((nm "r", v) :: (nm "yp", YP) :: [(nm "auth", .val (.word A))]) m)
    (E1 := fun _ _ _ _ => True) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s hs hL v hv => lk_upd_gen (s := s) hL (by simp) (by ra_rest [List.mem_cons]))
    (fun _ _ _ _ _ _ _ _ _ => trivial) ?_ (fun _ _ _ h => h.elim)
  intro R
  -- var s = lds {1,1,1,1} (auth + 88)
  refine gp_decV ha'.hH (L1 := fun v m => LK (kvA A YP R v) m)
    (E1 := fun _ _ _ _ => True) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s hs hL v hv => lk_upd_gen (s := s) hL (by ra_mem [kvA]) (by ra_rest [kvA]))
    (fun _ _ _ _ _ _ _ _ _ => trivial) ?_ (fun _ _ _ h => h.elim)
  intro S
  -- var rz = u256_is_zero(r); var rge = u256_lt(r, N)
  refine gp_decPure ha' haC (sumA_of_csumm isZero_C) (by simp) rfl rfl rfl
    (L1 := fun _ m => LK (kvA A YP R S) m) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s st W hL => lk_irr (s := { st with locals := s.locals }) hL (by ra_fresh [kvA]) _)
    ?_ (fun _ _ _ h => h.elim)
  intro W1
  refine gp_decPure ha' haC (sumA_of_csumm lt_C) (by simp) rfl rfl rfl
    (L1 := fun _ m => LK (kvA A YP R S) m) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s st W hL => lk_irr (s := { st with locals := s.locals }) hL (by ra_fresh [kvA]) _)
    ?_ (fun _ _ _ h => h.elim)
  intro W2
  refine gp_seq (gp_iteRet0 ha'.hH (fun Γ q M _ => raRv_zero Γ q M)) ?_
  -- var sz = u256_is_zero(s); var sgt = u256_gt(s, N/2)
  refine gp_decPure ha' haC (sumA_of_csumm isZero_C) (by simp) rfl rfl rfl
    (L1 := fun _ m => LK (kvA A YP R S) m) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s st W hL => lk_irr (s := { st with locals := s.locals }) hL (by ra_fresh [kvA]) _)
    ?_ (fun _ _ _ h => h.elim)
  intro W3
  refine gp_decPure ha' haC (sumA_of_csumm gt_C) (by simp) rfl rfl rfl
    (L1 := fun _ m => LK (kvA A YP R S) m) (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s st W hL => lk_irr (s := { st with locals := s.locals }) hL (by ra_fresh [kvA]) _)
    ?_ (fun _ _ _ h => h.elim)
  intro W4
  refine gp_seq (gp_iteRet0 ha'.hH (fun Γ q M _ => raRv_zero Γ q M)) ?_
  exact win_G ha' A YP R S

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.sumSpecA_recover_authority_G
