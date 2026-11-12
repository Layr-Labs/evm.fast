import InitECandidate.Solver.MemSafe.Ins.DelBodyFn

set_option autoImplicit false

/-!
# `_mpt_delete_node_body`: assembly
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem gp_of_gpj {a : Act σ} {P : State σ → Prop} {c : ProgHOL 64} {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (h : HoareG σ X P c (GPJ a (fun _ => False) Rv)) : HoareG σ X P c (GP a L E Rv) :=
  hoareG_conseq h (fun _ _ h => h) (fun r t _ _ h => ⟨fun hr => (h.1 hr).elim, h.2⟩)

theorem delBody_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd) {N K KL LV : BitVec 64}
    (hLV : LV.toNat ≤ KL.toNat) :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0)
        (LKV [(nm "node", N), (nm "key", K), (nm "klen", KL), (nm "level", LV)])
        (fun Γ _ _ => Fits Γ Types.nodeU N ∧ NIn Γ K KL))
      delBodyFull
      (GP (aD vs s0 Γ0 p0) (fun _ => True) (fun _ _ _ => True)
        (fun Γ' p' _ v => RetOK Γ' p0 p' vs [.fits Types.nodeU] v ∧
          ∃ w, v = .val (.word w) ∧ Rt Γ' w)) := by
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  unfold delBodyFull
  refine gp_decC ha.hH (c := 0) (x := nm "top") (by lkv_fresh [List.mem_cons]) ?_
  refine gp_decC ha.hH (c := 0) (x := nm "res") (by lkv_fresh [List.mem_cons]) ?_
  refine gp_decC ha.hH (c := 1) (x := nm "go") (by lkv_fresh [List.mem_cons]) ?_
  refine gp_of_gpj (gpj_seq (Inv1 := JDg a K KL 0) ?_ ?_)
  · refine hoareG_pre (dlLoop1_G ha (dlBody_G ha hL0 hsp0)) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨BitVec.ofNat 64 1, N, LV, BitVec.ofNat 64 0, BitVec.ofNat 64 0,
      fun p hp => hL p (by simp only [kvD, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
                           rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp),
      Γ, q, he, hh, hsc, hE.1, hLV, hE.2, Or.inl rfl, dl_zero _ _ _ _ _ _⟩
  refine gpj_seq (Inv1 := UJ0 a ) ?_ ?_
  · refine hoareG_pre (unwLoop_G ha (unwBody'_G ha hL0 hsp0)) ?_
    rintro s _ ⟨Nd, Lv, Res, T, hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨K, KL, Nd, Lv, 0, Res, T, hL, Γ, q, he, hh, hsc, hE.2.2.2.1, hE.2.2.2.2⟩
  · refine hoareG_pre (hoareG_ex fun K' => hoareG_ex fun KL' => hoareG_ex fun Nd => hoareG_ex fun Lv =>
      hoareG_ex fun G => hoareG_ex fun Res => ?_ ) (fun s _ h => h)
    have hresM : (nm "res", Res) ∈ kvD K' KL' Nd Lv Res G 0 := by simp [kvD]
    refine gpj_of_gp (gp_ret (L2 := fun _ => False) (E2 := fun _ _ _ => False) ha.hH
      (fun s Γ q _ hL _ _ hE v hv => ?_)) (fun t h => h.1)
    rw [ev_lw (hL _ hresM)] at hv
    cases hv
    exact rv_rt hE.1

/-- **`_mpt_delete_node_body`'s summary** at `guestHooksR`. -/
theorem sumSpecA_delete_body_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_mpt_delete_node_body")
      delSig (fun vs s Γ => DelPre vs s Γ) (fun _ s Γ a => CapPW brCaps s Γ a)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ w, v = .val (.word w) ∧ Rt Γ' w) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gpC (Rx := fun vs _ Γ' _ _ v => ∃ w, v = .val (.word w) ∧ Rt Γ' w)
    hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_br _) (by
      intro c hc
      simp only [brCaps, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl; rfl) ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_dlb hl
  obtain ⟨N, K, KL, LV, rfl, hLV, hK⟩ := hpre
  have hsp0 : p0.sp ≤ scratchEnd := (heap_ord hh).2.2.2.2.1
  have hL0 : Layout Types.guestC p0 Γ0 := by
    obtain ⟨p1, hp1, -, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) delSig brCaps _ s0 Γ0 p0 with hadef
  let kv0 : List (MlS × BitVec 64) :=
    [(nm "node", N), (nm "key", K), (nm "klen", KL), (nm "level", LV)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl | rfl | rfl | rfl
    · exact (hbind 0 (by decide) (by simp)).1
    · exact (hbind 1 (by decide) (by simp)).1
    · exact (hbind 2 (by decide) (by simp)).1
    · exact (hbind 3 (by decide) (by simp)).1
  have hNfit : Fits Γ0 Types.nodeU N := by
    obtain ⟨-, h⟩ := ha.hargs0
    obtain ⟨w, hw, hf⟩ := h 0 (.fits Types.nodeU) (.val (.word N)) rfl rfl
    simp [wordOf] at hw
    subst hw
    exact hf
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ _ => Fits Γ Types.nodeU N ∧ NIn Γ K KL))
    (Q := GP a (fun _ => True) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ w, v = .val (.word w) ∧ Rt Γ' w)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hNfit, hK⟩
  · intro r t _ _ h
    exact gp_final h
  exact delBody_G ha hL0 hsp0 hLV

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.delBody_G
#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_delete_body_G
