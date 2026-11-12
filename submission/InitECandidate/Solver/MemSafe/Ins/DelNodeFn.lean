import InitECandidate.Solver.MemSafe.Ins.DelNode
import InitECandidate.Solver.MemSafe.Ins.TryC

set_option autoImplicit false

/-!
# `_mpt_delete_node`: the summary (target theorem)
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

/-- **`_mpt_delete_node`'s summary** at `guestHooksR`. -/
theorem sumSpecA_delete_node_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_mpt_delete_node") delSig
      (fun vs s Γ => DelPre vs s Γ) (fun _ s Γ a => CapPW brCaps s Γ a)
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
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_dln hl
  obtain ⟨N, K, KL, LV, rfl, hLV, hK⟩ := hpre
  have hL0 : Layout Types.guestC p0 Γ0 := by
    obtain ⟨p1, hp1, -, hL, -⟩ := hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) delSig brCaps _ s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
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
  refine hoareG_conseq
    (P := GI a (LKV kv0) (fun Γ q _ => q = p0 ∧ Fits Γ Types.nodeU N ∧ NIn Γ K KL))
    (Q := GP a (fun _ => False) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ w, v = .val (.word w) ∧ Rt Γ' w)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, rfl, hNfit, hK⟩
  · intro r t _ _ h
    exact gp_final h
  unfold delNodeFull
  -- `var mark = scratch_mark()`
  refine gp_markS ha hX
    (L1 := fun w m => LKV ((nm "mark", w) :: kv0) m)
    (E1 := fun w Γ q M => w.toNat = p0.sp ∧ Fits Γ Types.nodeU N ∧ NIn Γ K KL)
    (L2 := fun _ => False) (L3 := fun _ => False)
    (fun s st w hL => lkv_cons (lkv_set (s := { st with locals := s.locals }) hL
      (by lkv_fresh [kv0]) _) (by simp [setVarHOLFinite, FUPDATE]))
    (fun Γ q M w hE hw => ⟨by rw [hw, hE.1], hE.2⟩) ?_ (fun _ _ _ h => h.elim)
  intro Mk
  have hfe : ∀ p ∈ (nm "mark", Mk) :: kv0, p.1 ≠ nm "e" := by lkv_fresh [kv0]
  refine gp_dec ha.hH (L1 := LKV ((nm "e", BitVec.ofNat 64 0) :: (nm "mark", Mk) :: kv0))
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv; exact lkv_cons (lkv_set (s := s) hL hfe _) (by simp [setVarHOLFinite, FUPDATE])
  have hfres : ∀ p ∈ (nm "e", BitVec.ofNat 64 0) :: (nm "mark", Mk) :: kv0, p.1 ≠ nm "res" := by
    lkv_fresh [kv0]
  refine gp_dec ha.hH
    (L1 := LKV ((nm "res", BitVec.ofNat 64 0) :: (nm "e", BitVec.ofNat 64 0) :: (nm "mark", Mk) :: kv0))
    (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_ (fun _ _ _ h => h.elim)
  · rw [ev_cw] at hv; cases hv
    exact lkv_cons (lkv_set (s := s) hL hfres _) (by simp [setVarHOLFinite, FUPDATE])
  have hmarkM : (nm "mark", Mk) ∈ (nm "res", BitVec.ofNat 64 0) :: (nm "e", BitVec.ofNat 64 0) ::
      (nm "mark", Mk) :: kv0 := by simp
  have hnodeT : (nm "node", N) ∈ (nm "res", BitVec.ofNat 64 0) :: (nm "e", BitVec.ofNat 64 0) ::
      (nm "mark", Mk) :: kv0 := by simp [kv0]
  have hkeyT : (nm "key", K) ∈ (nm "res", BitVec.ofNat 64 0) :: (nm "e", BitVec.ofNat 64 0) ::
      (nm "mark", Mk) :: kv0 := by simp [kv0]
  have hklenT : (nm "klen", KL) ∈ (nm "res", BitVec.ofNat 64 0) :: (nm "e", BitVec.ofNat 64 0) ::
      (nm "mark", Mk) :: kv0 := by simp [kv0]
  have hlevT : (nm "level", LV) ∈ (nm "res", BitVec.ofNat 64 0) :: (nm "e", BitVec.ofNat 64 0) ::
      (nm "mark", Mk) :: kv0 := by simp [kv0]
  refine gp_tryVC ha (cs := brCaps) (by show capSub brCaps brCaps = true; decide) (sumSpecA_delete_body_G) (funSpec_true _) (by simp [delSig])
    (fun _ => rfl) (by decide)
    (Lx := fun v m => (∃ W : BitVec 64, v = .val (.word W)) ∧ m.lookup (nm "res") = some v ∧
      m.lookup (nm "mark") = some (.val (.word Mk)))
    (Ex := fun v Γ _ _ => Mk.toNat = p0.sp ∧ ∀ W : BitVec 64, v = .val (.word W) → Rt Γ W)
    (Lh := fun m => m.lookup (nm "mark") = some (.val (.word Mk)))
    (Eh := fun _ _ _ => Mk.toNat = p0.sp)
    (fun s Γ q _ hL hh' hE vs1 hvs => ?_)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ hhx hxt hhy hmo hnf => ?_) ?_ ?_
  · have hev : evs s [lv (nm "node"), lv (nm "key"), lv (nm "klen"), lv (nm "level")] =
        some [.val (.word N), .val (.word K), .val (.word KL), .val (.word LV)] :=
      evs_cons (ev_lw (hL _ hnodeT)) (evs_cons (ev_lw (hL _ hkeyT))
        (evs_cons (ev_lw (hL _ hklenT)) (evs_cons (ev_lw (hL _ hlevT)) evs_nil)))
    rw [hev] at hvs
    cases hvs
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [delSig]),
      fun _ => ⟨N, K, KL, LV, rfl, hLV, hE.2.2⟩⟩
    rcases i with _ | _ | _ | _ | i
    · simp [delSig] at hpt hv
      subst hpt hv
      exact ⟨N, rfl, hE.2.1⟩
    · simp [delSig] at hpt hv; subst hpt; trivial
    · simp [delSig] at hpt hv; subst hpt; trivial
    · simp [delSig] at hpt hv; subst hpt; trivial
    · simp [delSig] at hpt
  · have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hhx.2.1
    refine ⟨hQ.1, fun v hv => ⟨⟨hE.1, fun W hW => ?_⟩, fun hval => ⟨?_, ?_, ?_⟩⟩, fun v hv => ⟨hE.1, ?_⟩⟩
    · obtain ⟨w, hw, hRt⟩ := hQ.2 v hv q q' hq0 hhy.2.1
      rw [hw] at hW
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hW
      subst hW
      exact hRt
    · exact word_of_valid (hL _ (List.mem_cons_self ..)) hval
    · simp [setVarHOLFinite, FUPDATE]
    · exact lk_keep (by decide) (hL _ hmarkM)
    · exact lk_keep (by decide) (hL _ hmarkM)
  · unfold Band.relRaise
    refine gp_seq (gp_relS ha hX (E' := fun _ _ _ => True) (fun m h => h)
      (fun s Γ q hh' hsc hE => winOK_of_scrOld ha rfl hh' hsc hL0 hE) (fun _ _ _ _ => trivial)) ?_
    exact gp_raiseG ha.hH
  · intro v
    by_cases hw : ∃ W : BitVec 64, v = .val (.word W)
    swap
    · exact hoareG_false fun s _ h => hw h.1.1
    obtain ⟨W, rfl⟩ := hw
    refine gp_seq (gp_relS ha hX (E' := fun Γ _ _ => Rt Γ W) (fun m h => h.2.2)
      (fun s Γ q hh' hsc hE => winOK_of_scrOld ha rfl hh' hsc hL0 hE.1)
      (fun Γ q M hE => hE.2 W rfl)) ?_
    refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v' hv' => ?_)
    rw [ev_lw hL.2.1] at hv'
    cases hv'
    exact rv_rt hE

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_delete_node_G
