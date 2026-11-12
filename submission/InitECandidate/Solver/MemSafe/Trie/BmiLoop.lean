import InitECandidate.Solver.MemSafe.Trie.Bmi

/-!
# `build_mpt_indexed`: the loop

`while i <+ n { klen = rlp_encode_word(mpt_key_scratch, i); mpt_set(m, mpt_key_scratch, klen, SLICE(i)); i = i + 1 }`
at an activation with the handle record `M` (`HRecU`) and the slice array (`ArrE`) as the memory invariant `EL`.
The key buffer is the `tB16` object of `mpt_key_scratch` (`key_obj`, `key_cell`): its cells are in the footprint
(`foot_of_scellK`) and never meet the handle record or the array.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem gt_mks : Types.guestC.GT.lookup (nm "mpt_key_scratch") = some (.ptr 33) := by
  conv => lhs; cbv

theorem key_obj {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G Types.guestC H Γ s) :
    ∃ D : BitVec 64, ∃ o ∈ Γ, s.globals.lookup (nm "mpt_key_scratch") = some (.val (.word D)) ∧
      o.base = D ∧ o.ty = Types.tB16 := by
  obtain ⟨p, hp, hord, hL, hF, hT, hGl, hW⟩ := hG
  obtain ⟨D, hD, o, ho, hb, ht⟩ := hGl _ _ gt_mks
  exact ⟨D, o, ho, AllocImpl.lookup_of_gword hD, hb, ht⟩

theorem key_live {Γ : Gam} {q : Ptrs} (hL : Layout Types.guestC q Γ) {o : Obj} (ho : o ∈ Γ)
    (ht : o.ty = Types.tB16) : o.lo % 8 = 0 ∧ 16 ≤ o.size ∧ heapBase ≤ o.lo ∧ o.lo + o.size ≤ q.hp := by
  obtain ⟨h8, hs8, hpos, hmin, hlive⟩ := hL.1 o ho
  rw [ht] at hmin hlive
  have e : (Types.guestC.ty Types.tB16).minSz = 16 := by decide
  rw [e] at hmin
  exact ⟨h8, hmin, hlive.1, hlive.2⟩

theorem key_cell {Γ : Gam} {q : Ptrs} (hord : q.Ordered) (hL : Layout Types.guestC q Γ) {o : Obj} (ho : o ∈ Γ)
    (ht : o.ty = Types.tB16) {c : BitVec 64} (hc : Overlap o.base.toNat 9 c) :
    ∃ k, k < 2 ∧ o.HasSlot k ∧ (Types.guestC.ty o.ty).slot k = .scalar ∧ c = o.cell k := by
  obtain ⟨h8, h16, -, -⟩ := key_live hL ho ht
  obtain ⟨c8, c1, c2⟩ := hc
  unfold Obj.lo at h8
  have hc' : c.toNat = o.base.toNat ∨ c.toNat = o.base.toNat + 8 := by omega
  rw [ht]
  rcases hc' with e | e
  · have hk : o.HasSlot 0 := by unfold Obj.HasSlot; omega
    refine ⟨0, by omega, hk, by decide, BitVec.eq_of_toNat_eq ?_⟩
    rw [(cell_toNat hord hL ho hk).1, e]; rfl
  · have hk : o.HasSlot 1 := by unfold Obj.HasSlot; omega
    refine ⟨1, by omega, hk, by decide, BitVec.eq_of_toNat_eq ?_⟩
    rw [(cell_toNat hord hL ho hk).1, e]; rfl

/-- A scalar cell of a live object is in the footprint: it is in an entry object (a `WCell`) or fresh. -/
theorem foot_of_scellK {a : Act σ} {X : Ctx 64} (ha : ActOK a X) (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs}
    {s : State σ} (hh : Heap a Γ q s) {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k)
    (hsc : (Types.guestC.ty o.ty).slot k = .scalar) : a.Foot (o.cell k) := by
  have hord := heap_ord hh
  have hL := layout_of_heap haC hh
  obtain ⟨hcc, -⟩ := cell_toNat hord hL ho hk
  unfold Obj.HasSlot at hk
  rcases hh.2.2.2.2.1 o ho (o.cell k) (by unfold Obj.lo at *; omega) (by unfold Obj.hi Obj.lo at *; omega) with
    ⟨o0, ho0, hb, ht, h1, h2⟩ | hf
  · left
    have hs0 := ha.hsz0 o0 ho0
    refine ⟨o0, ho0, k, ?_, ?_, ?_⟩
    · unfold Obj.HasSlot
      unfold Obj.hi Obj.lo at *
      rw [hb] at h2
      omega
    · rw [haC, ht, hsc]; decide
    · unfold Obj.cell; rw [hb]
  · right; right; left
    exact fresh_not_alloc ha.hord0 hord hh.2.2.1 hf

theorem argsOK_bw {C : Cfg} {Γ : Gam} {p : Ptrs} {v1 : ValueHOL 64} {w : BitVec 64} {n : Nat}
    (h : BufOK C Γ p w.toNat n) :
    ArgsOK C Γ p [.buf n, .any] [.val (.word w), v1] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt hv <;> subst hpt <;> subst hv
  · exact ⟨w, rfl, h⟩
  · trivial

theorem argCells_bw {n : Nat} {v1 : ValueHOL 64} {w x : BitVec 64}
    (h : ArgCells [.buf n, .any] [.val (.word w), v1] x) : Overlap w.toNat n x := by
  obtain ⟨i, w', hw, h⟩ := h
  rcases h with ⟨m, hm, ho⟩ | ⟨j, c, d, y, hj, -⟩
  · rcases i with _ | _ | i
    · simp at hm
      subst hm
      simp [argW, wordOf] at hw
      subst hw
      exact ho
    · simp at hm
    · simp at hm
  · rcases i with _ | _ | i <;> simp at hj

def kvB (M MK A N OUT : BitVec 64) : List (MlS × ValueHOL 64) :=
  [(nm "m", .val (.word M)), (nm "mark", .val (.word MK)), (nm "slice_arr", .val (.word A)),
    (nm "n", .val (.word N)), (nm "out", .val (.word OUT))]

theorem kvB_fresh {M MK A N OUT : BitVec 64} {x : MlS}
    (hx : x = nm "i" ∨ x = nm "klen") : ∀ p ∈ kvB M MK A N OUT, p.1 ≠ x := by
  intro p hp
  simp only [kvB, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hx with rfl | rfl <;> rcases hp with rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)

theorem kvI_fresh {M MK A N OUT I : BitVec 64} :
    ∀ p ∈ (nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT, p.1 ≠ nm "klen" := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · dsimp only; decide
  · exact kvB_fresh (Or.inr rfl) p hp

/-- `mpt_set(m, mpt_key_scratch, klen, SLICE_PTR(slice_arr, i), SLICE_LEN(slice_arr, i))`. -/
theorem bmi_set {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {kv : List (MlS × ValueHOL 64)} {I KL M A N : BitVec 64} (hI : I.toNat < N.toNat) (hKL : KL.toNat ≤ 9)
    (hm : (nm "m", ValueHOL.val (.word M)) ∈ kv) (hA : (nm "slice_arr", ValueHOL.val (.word A)) ∈ kv)
    (hi : (nm "i", ValueHOL.val (.word I)) ∈ kv) (hk : (nm "klen", ValueHOL.val (.word KL)) ∈ kv)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (LV kv) (EL a A N M)) (.call (some (none, none)) (nm "mpt_set") bmiSetArgs)
      (GP a (LV kv) (EL a A N M) Rv) := by
  have hms : SumSpecA σ guestCtx a.Cb a.H (nm "mpt_set") mpsSig MpsPre
      (fun _ s Γ x => CapPW insCaps s Γ x)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ M, argW vs 0 = some M ∧ HRec Γ' p' t.memory M) := by
    rw [hCb, haH]; exact sumSpecA_mpt_set
  have hev : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), LV kv s.locals → Heap a Γ q s → ∀ vs,
      evs s bmiSetArgs = some vs →
      ∃ K : BitVec 64, vs = [.val (.word M), .val (.word K), .val (.word KL),
        .val (.word (rd s.memory (A + I * 16#64))), .val (.word (rd s.memory (A + (I * 16#64 + 8#64))))] := by
    intro s Γ q hL hh vs hvs
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
    obtain ⟨D, o, ho, hD, -, -⟩ := key_obj hG
    have e1 := lv_ev hL hm
    have e2 : ev s (gv (nm "mpt_key_scratch")) = some (.val (.word D)) := hD
    have e3 := lv_ev hL hk
    have e4 : ev s bmiEl = some (.val (.word (A + I * 16#64))) :=
      ev_add2 (lv_ev hL hA) (ev_mul2 (lv_ev hL hi) (ev_cw s 16))
    have e5 : ev s bmiEl8 = some (.val (.word (A + (I * 16#64 + 8#64)))) :=
      ev_add3 (lv_ev hL hA) (ev_mul2 (lv_ev hL hi) (ev_cw s 16)) (ev_cw s 8)
    unfold bmiSetArgs at hvs
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    obtain ⟨v4, vs4, rfl, h4, hr4⟩ := evs_cons_inv hr3
    obtain ⟨v5, vs5, rfl, h5, hr5⟩ := evs_cons_inv hr4
    rw [evs_nil] at hr5
    cases hr5
    rw [e1] at h1; cases h1
    rw [e2] at h2; cases h2
    rw [e3] at h3; cases h3
    obtain ⟨w4, hw4, -, rfl⟩ := Struct.ev_load1_inv h4
    rw [e4] at hw4; cases hw4
    obtain ⟨w5, hw5, -, rfl⟩ := Struct.ev_load1_inv h5
    rw [e5] at hw5; cases hw5
    exact ⟨D, rfl⟩
  refine gp_callX ha (cs := insCaps) hcI hms (funSpec_true _) (by simp [mpsSig]) (fun _ => hgr) ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨K, rfl⟩ := hev s Γ q hL hh vs hvs
    obtain ⟨hHR, hArr⟩ := hE
    obtain ⟨c1, c2, hv⟩ := hArr I hI
    refine ⟨argsOK_mps (bufok_hrec hHR.1), fun x hx => Or.inr (Or.inr (Or.inl (hHR.2 x (argCells_mps hx)))),
      fun callee => ⟨M, K, KL, _, _, rfl, mrecF_of_hRec hh.2.1 hHR.1, by omega, ?_⟩⟩
    rw [c1.2.2, c2.2.2]
    exact hv
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    obtain ⟨K, rfl⟩ := hev s Γ q hL hh vs hvs
    refine ⟨hQ.1, fun ⟨v, hv⟩ => ?_⟩
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q := (AllocImpl.ptrsOf_congr rfl).trans hh.2.1
    obtain ⟨M', hM', hHR'⟩ := hQ.2 v hv q q' hq0 hh'.2.1
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hM'
    subst hM'
    refine ⟨⟨hHR', hE.1.2⟩, arrE_step hCb hmd hext hnf hh.2.2.1 hmo (heap_ord hh) (heap_ord hh')
      (layout_of_heap haC hh) hE.2 ?_⟩
    intro c hcA _ hcArg
    exact hE.1.2 c (argCells_mps hcArg) hcA

/-- The loop body at a fixed `i = I < n`. -/
theorem bmi_body {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {I M MK A N OUT : BitVec 64} (hI : I.toNat < N.toNat) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (LV ((nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT)) (EL a A N M)) bmiLoopBody
      (GP a (fun m => ∃ I' : BitVec 64, LV ((nm "i", ValueHOL.val (.word I')) :: kvB M MK A N OUT) m)
        (EL a A N M) Rv) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hRW : SumSpecA σ guestCtx a.Cb a.H (nm "rlp_encode_word") sigRlpEncodeWord (fun _ s Γ => ReqOK [] s Γ)
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact csumm_of_summ (summ_rlp_encode_word hF.hH tagSlots_guestC hF.hX hF.hal)
  have hev : ∀ (s : State σ) (D : BitVec 64), LV ((nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT) s.locals →
      s.globals.lookup (nm "mpt_key_scratch") = some (.val (.word D)) →
      evs s [gv (nm "mpt_key_scratch"), lv (nm "i")] = some [.val (.word D), .val (.word I)] :=
    fun s D hL hD => evs_cons hD (evs_cons (lv_ev hL (List.mem_cons_self ..)) evs_nil)
  unfold bmiLoopBody
  refine gp_decCallX ha (cs := []) (capSub_nil _) hRW (footRet_rlp_encode_word hF.hX hF.hal)
    (by simp [sigRlpEncodeWord]) (fun h => by simp [sigRlpEncodeWord] at h)
    (L1 := fun v m => LV ((nm "klen", v) :: (nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT) m)
    (E1 := fun v Γ q mm => EL a A N M Γ q mm ∧ ∃ KL : BitVec 64, v = .val (.word KL) ∧ KL.toNat ≤ 9)
    (L2 := fun m => ∃ I' : BitVec 64, LV ((nm "i", ValueHOL.val (.word I')) :: kvB M MK A N OUT) m)
    ?_ ?_ ?_ ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
    obtain ⟨D, o, ho, hD, hb, ht⟩ := key_obj hG
    rw [hev s D hL hD] at hvs
    cases hvs
    have hord := heap_ord hh
    have hLy := layout_of_heap haC hh
    refine ⟨argsOK_bw (fun c hc => ?_), fun x hx => ?_, fun callee c hc => by simp at hc⟩
    · obtain ⟨k, -, hk, hsc, rfl⟩ := key_cell hord hLy ho ht (by rw [hb]; exact hc)
      exact Or.inl ⟨o, ho, k, hk, by rw [hCb]; exact hsc, rfl⟩
    · obtain ⟨k, -, hk, hsc, rfl⟩ := key_cell hord hLy ho ht (by rw [hb]; exact argCells_bw hx)
      exact foot_of_scellK ha haC hh ho hk hsc
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
    obtain ⟨D, o, ho, hD, hb, ht⟩ := key_obj hG
    rw [hev s D hL hD] at hvs
    cases hvs
    have hord := heap_ord hh
    have hLy := layout_of_heap haC hh
    have hin : ∀ y, ArgCells sigRlpEncodeWord.params [.val (.word D), .val (.word I)] y → InObj Γ y.toNat := by
      intro y hy
      obtain ⟨k, -, hk, -, rfl⟩ := key_cell hord hLy ho ht (by rw [hb]; exact argCells_bw hy)
      exact cell_in hord hLy ho hk
    obtain ⟨h8, h16, -, hlive⟩ := key_live hLy ho ht
    have hqh := hord.2.1
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun v hv hsh => ⟨⟨?_, ?_⟩, ?_⟩⟩
    · refine hrecU_step hCb hmd hext hnf hmo hord (heap_ord hh') hLy hE.1 fun y hy => ?_
      have hy := hin y hy
      exact ⟨fun e => hE.1.1.2.2.2.1 (e ▸ hy), fun e => hE.1.1.2.2.2.2.1 (e ▸ hy)⟩
    · exact arrE_step hCb hmd hext hnf hh.2.2.1 hmo hord (heap_ord hh') hLy hE.2
        fun c _ hcO hcArg => hcO (hin c hcArg)
    · have hpre : WPre [.val (.word D), .val (.word I)] := by
        refine ⟨D, rfl, fun W hW => ?_⟩
        simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hW
        have hWI : W = I := hW.symm
        rw [hWI]
        have := (wordLen_le I.isLt).2
        have he : heapEnd ≤ scratchEnd := by decide
        unfold Obj.lo at hlive
        rw [hb] at hlive
        omega
      obtain ⟨-, -, hret'⟩ := hLc (by subst hv; simp [Good]) hpre
      have hw := hret' v hv I rfl
      refine ⟨BitVec.ofNat 64 (wordLen I.toNat), hw, ?_⟩
      have := (wordLen_le I.isLt).2
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      exact this
  · intro s st v hL hsh
    exact lv_new (s := { st with locals := s.locals }) hL kvI_fresh v
  · intro v s hs ⟨hL, Γ, q, he, hh, hsc, hE, KL, hv, hKL⟩ hg
    subst hv
    refine (gp_seq (bmi_set ha haC hCb haH hgr hcI (kv := (nm "klen", ValueHOL.val (.word KL)) ::
        (nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT) hI hKL (by simp [kvB]) (by simp [kvB])
        (by simp) (by simp)) ?_) s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ hg
    refine gp_assign ha.hH fun s hs hL v hv => ⟨I + BitVec.ofNat 64 1, ?_⟩
    rw [ev_add2 (lv_ev hL (x := nm "i") (v := ValueHOL.val (.word I)) (by simp)) (ev_cw s 1)] at hv
    cases hv
    exact lv_new (lv_mono hL fun p hp => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hp))
      (kvB_fresh (Or.inl rfl)) _
  · intro m0 m _ ⟨I', h⟩
    exact ⟨I', lv_res h kvI_fresh _⟩

/-- **The loop.** -/
theorem bmi_loop {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {M MK A N OUT : BitVec 64} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT) m)
        (EL a A N M)) bmiLoop
      (GP a (fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: kvB M MK A N OUT) m)
        (EL a A N M) Rv) := by
  unfold bmiLoop
  refine gp_while ha.hH ?_ (fun s _ h _ => h)
  intro s hs ⟨⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩, hc⟩ hg
  have hIN : I.toNat < N.toNat :=
    Struct.cmp_lower_true (cmp_true' (lv_ev hL (List.mem_cons_self ..)) (lv_ev hL (by simp [kvB])) hc)
  exact bmi_body ha haC hCb haH hgr hcI hIN s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ hg

end InitECandidate.Solver.MemSafe.Trie

#print axioms InitECandidate.Solver.MemSafe.Trie.bmi_set
#print axioms InitECandidate.Solver.MemSafe.Trie.foot_of_scellK
#print axioms InitECandidate.Solver.MemSafe.Trie.bmi_loop
