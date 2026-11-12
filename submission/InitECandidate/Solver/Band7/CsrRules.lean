import InitECandidate.Solver.Band7.CsrSW

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

set_option maxHeartbeats 0 in
theorem gc_allocQ {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) {n : Nat}
    (hn64 : n < 2 ^ 64) (hn8 : n % 8 = 0) {x : MlS} {kv : List (MlS × ValueHOL 64)}
    (hx : ∀ p ∈ kv, p.1 ≠ x) {E : Gam → Ptrs → Mem → Prop}
    (Q : BitVec 64 → Gam → Ptrs → Mem → Prop)
    (hQ : ∀ (s st : State σ) (Γ Γ' : Gam) (q q' : Ptrs) (H : BitVec 64), Ext Γ Γ' → Heap a Γ q s →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' →
      Mod a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [] [.val (.word (BitVec.ofNat 64 n))] Γ q s st →
      E Γ q s.memory → H.toNat = q.hp → FBlk a.p0 H n Γ' q' → st.memory = s.memory →
      Q H Γ' q' st.memory)
    {k : ProgHOL 64} {L2 L3 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → Prop}
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hk : ∀ H : BitVec 64, CH σ (GI a (LV ((x, ValueHOL.val (.word H)) :: kv)) (Q H)) k
      (GP a L2 E2 Rv) (cb k))
    (hres : ∀ m0 m : LocalsH, LV kv m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    CH σ (GI a (LV kv) E) (.decCall x .one (nm "alloc") [cw n] k) (GP a L3 E2 Rv)
      (cb (.decCall x .one (nm "alloc") [cw n] k)) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hev : ∀ s : State σ, evs s [cw n] = some [.val (.word (BitVec.ofNat 64 n))] := fun s =>
    evs_cons (ev_cw s n) evs_nil
  have hZ : (BitVec.ofNat 64 n).toNat = n := by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hn64]
  refine gc_decCallT ha (cs := []) (capSub_nil _) (sa_cast hCb haH Dn.alloc_R) (funSpec_allocRel hX)
    (by simp) (fun h => by simp at h)
    (L1 := fun v m => ∃ H : BitVec 64, v = .val (.word H) ∧ LV ((x, v) :: kv) m)
    (E1 := fun v Γ q mm => ∀ H : BitVec 64, v = .val (.word H) → Q H Γ q mm) (L2 := L2) (E2 := E2)
    ?_ ?_ ?_ ?_ hres
  · intro s Γ q hs hL hh hE vs hvs
    rw [hev s] at hvs
    cases hvs
    exact ⟨(anyArgsG (by simp) rfl (hev s)).1, fun x hx => argCells_any (by simp) hx |>.elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ' hh hext hh' hmo hnf hnfp hmd hret
    rw [hev s] at hvs
    cases hvs
    have hnoarg : ∀ y, ¬ ArgCells [PT.any] [.val (.word (BitVec.ofNat 64 n))] y :=
      fun y => argCells_any (by simp)
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh H hH => ?_⟩
    have co : CO a ⟨[PT.any], [RT.freshArg 0 1 0], [], false⟩ [.val (.word (BitVec.ofNat 64 n))] Γ Γ' q q'
        s st r := ⟨hh, hext, hh', hmo, hnf, hnfp,
      fun x hw hal => hmd x hw (hnoarg x) (by rintro ⟨-, c, hc, -⟩; simp [capSub] at hc) hal, hret⟩
    obtain ⟨H', hv', hHn, hFB, hmem⟩ := alloc_fblk haC rfl co hLc hv (by rw [hZ]; exact hn8)
    rw [hv'] at hH
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
    subst hH
    rw [hZ] at hFB
    exact hQ s st Γ Γ' q q' H' hext hh hh' hmo hnf hmd hE hHn hFB hmem
  · intro s st v hL hsh
    obtain ⟨H, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨H, rfl, lv_cons (lv_set hL hx _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ H : BitVec 64, v = .val (.word H)
    swap
    · exact ch_false fun s _ h => hw (by obtain ⟨H, hH, -⟩ := h.1; exact ⟨H, hH⟩)
    obtain ⟨H, rfl⟩ := hw
    exact ch_pre (hk H) (fun s _ ⟨⟨H', hH', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH'
      subst hH'
      exact ⟨hL, Γ, q, he, hh, hsc, hE H rfl⟩)


set_option maxHeartbeats 0 in
theorem gc_decAny {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) {E : Gam → Ptrs → Mem → Prop} (hP : Pers a E)
    {f : MlS} {sg' : Sig}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' (fun _ _ _ => True) (fun _ s Γ y => CapPW [] s Γ y)
      (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgrows : sg'.grows = false) (hgw : sg'.gw = [])
    {args : List (ExpHOL 64)} (hlen : sg'.params.length = args.length)
    {x : MlS} {sh : ShapeHOL} {kv : List (MlS × ValueHOL 64)} (hx : ∀ p ∈ kv, p.1 ≠ x)
    (Pv : ValueHOL 64 → Prop) (hsh : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → Pv v)
    {k : ProgHOL 64} {L2 L3 : LocalsH → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hk : ∀ v, Pv v → CH σ (GI a (LV ((x, v) :: kv)) E) k (GP a L2 E Rv) (cb k))
    (hres : ∀ m0 m : LocalsH, LV kv m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x)))
    (hct : CalleeCost σ guestCtx f (tb f) := by exact cc_tb (by rfl)) :
    CH σ (GI a (LV kv) E) (.decCall x sh f args k) (GP a L3 E Rv) (cb (.decCall x sh f args k)) := by
  refine gc_decCallT ha (cs := []) (capSub_nil _) hf (funSpec_true _) (by simp [hgw])
    (fun h => by rw [hgrows] at h; cases h) (hcost := hct)
    (L1 := fun v m => Pv v ∧ LV ((x, v) :: kv) m) (E1 := fun _ => E) (L2 := L2) (E2 := E) ?_ ?_ ?_ ?_ hres
  · intro s Γ q hs hL hh hE vs hvs
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs
    exact ⟨h.1, fun y hy => (h.2 y hy).elim, fun _ => trivial⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp hgrows), fun v hv hsh' => ?_⟩
    refine hP sg' [] vs Γ Γ' q q' s st ?_ (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE
    exact List.all_eq_true.mpr fun pt hpt => by rw [hps pt hpt]; simp [noBufP]
  · intro s st v hL hsh'
    exact ⟨hsh v hsh', lv_cons (lv_set hL hx _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hv : Pv v
    swap
    · exact ch_false fun s _ h => hv h.1.1
    exact ch_pre (hk v hv) (fun s _ ⟨⟨_, hL⟩, rest⟩ => ⟨hL, rest⟩)


set_option maxHeartbeats 0 in
/-- `x = f(args);` for a local `x` and a buffer-free callee. -/
theorem gc_callAssignAny {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) {E : Gam → Ptrs → Mem → Prop} (hP : Pers a E)
    {f : MlS} {sg' : Sig}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' (fun _ _ _ => True) (fun _ s Γ y => CapPW [] s Γ y)
      (fun _ _ _ _ _ _ => True))
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgrows : sg'.grows = false) (hgw : sg'.gw = [])
    {args : List (ExpHOL 64)} (hlen : sg'.params.length = args.length)
    {x : MlS} {L L' : LocalsH → Prop}
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      L' (setKvarHOLFinite VarKind.local x v { st with locals := s.locals }).locals)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hct : CalleeCost σ guestCtx f (tb f) := by exact cc_tb (by rfl)) :
    CH σ (GI a L E) (.call (some (some (VarKind.local, x), none)) f args) (GP a L' E Rv) (cb (.call (some (some (VarKind.local, x), none)) f args)) := by
  have hnb : sg'.params.all noBufP = true :=
    List.all_eq_true.mpr fun pt hpt => by rw [hps pt hpt]; simp [noBufP]
  refine ⟨?_, Inv.costP_call (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hct) (fun _ _ _ _ _ _ => trivial)
    (by intro _ _ _ _ h; cases h)⟩
  refine hoareG_callA (hf.and (funSpec_true _)) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ _
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX (r := .returned v)
      (Pre := fun _ _ _ => True) (Q := fun _ _ _ _ _ _ => True) ha hh (capSub_nil _) hR
      (by simp [Good]) (by simp [Abortive]) h.1 (fun y hy => (h.2 y hy).elim) trivial
      (by simp [hgw]) (fun hg => by rw [hgrows] at hg; cases hg)
    refine ⟨fun _ => ⟨hL' s st v hL, Γ', q', ext_trans he hext,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc (scrOld_of_nf0 (layout_of_heap haC hh') (hnfp hgrows)),
      hP sg' [] vs Γ Γ' q q' s st hnb (by intro c hc; simp at hc) hmd hext hnf hmo hh hh' hE⟩,
      fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    have h := anyArgsG (a := a) (Γ := Γ) (q := q) hps hlen hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := heap_callGX
      (Pre := fun _ _ _ => True) (Q := fun _ _ _ _ _ _ => True) ha hh (capSub_nil _) hR (abn_good' habn) hna
      h.1 (fun y hy => (h.2 y hy).elim) trivial (by simp [hgw])
      (fun hg => by rw [hgrows] at hg; cases hg)
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc (scrOld_of_nf0 (layout_of_heap haC hh') (hnfp hgrows)),
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩


end InitECandidate.Solver.MemSafe.Trie
