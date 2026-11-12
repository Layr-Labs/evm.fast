import InitECandidate.Solver.MemSafe.Exb.PhT

/-!
# `payload_header`, the withdrawal loop

Each `encode_withdrawal_rlp` result is the start of a fresh 64-byte block (`HypWdFresh`): adopted as a `tVAL` object at once (`ph_wdBody`), stored into `wd_rlp_slices[i]`.
The invariant `EC … I` says the first `I` entries are done; `pp_whileN` is the loop rule with the index in the invariant.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- The loop rule when the invariant is indexed and the body moves to the next index. -/
theorem pp_whileN {ι : Type} {a : Act σ} {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop}
    (hH : HooksLawful a.C a.H) {c : ExpHOL 64} {body : ProgHOL 64} (LI : ι → LocalsH → Prop)
    (EI : ι → Gam → Ptrs → Mem → LocalsH → Prop) (nx : ι → ι) {Lx : LocalsH → Prop} {Ex : Gam → Ptrs → Mem → LocalsH → Prop}
    (hb : ∀ i, HoareG σ X (fun s => PJ a (LI i) (EI i) s ∧ CondTrue s c) body (PP a (LI (nx i)) (EI (nx i)) Rv))
    (hexit : ∀ i (s : State σ), InCtx s X → PJ a (LI i) (EI i) s → ev s c = some (.val (.word 0)) → PJ a Lx Ex s) :
    HoareG σ X (fun s => ∃ i, PJ a (LI i) (EI i) s) (.while c body) (PP a Lx Ex Rv) := by
  refine hoareG_while (I := fun s => ∃ i, PJ a (LI i) (EI i) s) ?_ ?_ (fun s hs ⟨i, hi⟩ hc => ⟨fun _ => hexit i s hs hi hc,
    fun r' h => by cases h⟩)
  · rintro t ⟨i, hL, Γ, q, he, hh, hE⟩
    exact ⟨i, hL, Γ, q, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hE⟩
  · rintro s hs ⟨⟨i, hi⟩, hc⟩ hg
    have h := hb i s hs ⟨hi, hc⟩ hg
    have hnab : ∀ r', (evaluateHOLFiniteState s body).1 = some r' → (r' = .continue ∨ r' = .break) → False := by
      intro r' hr' hcb
      rcases (h.2 r' hr').1 with ⟨v, hv⟩ | ⟨e, v, he⟩ | ⟨e, he⟩
      · rcases hcb with rfl | rfl <;> cases hv
      · rcases hcb with rfl | rfl <;> cases he
      · rcases hcb with rfl | rfl <;> cases he
    refine ⟨fun hr => ⟨_, h.1 hr⟩, fun hc' => (hnab _ hc' (Or.inl rfl)).elim,
      fun hbk => (hnab _ hbk (Or.inr rfl)).elim, fun r' hr' h1 h2 => ?_⟩
    exact ⟨fun hr => by simp [hr'] at hr, h.2⟩

/-- A fresh block stays fresh when objects are added above it. -/
theorem fblk_newTop {p0 q : Ptrs} {b : BitVec 64} {n : Nat} {Γ Γ'' : Gam} {B m : Nat} (hF : Trie.FBlk p0 b n Γ q)
    (hnew : ∀ o ∈ Γ'', o ∈ Γ ∨ (o.lo = B ∧ o.hi = B + m)) (hab : b.toNat + n ≤ B) : Trie.FBlk p0 b n Γ'' q := by
  obtain ⟨h1, h2, h3, h4, hc⟩ := hF
  refine ⟨h1, h2, h3, h4, fun x hx1 hx2 => ⟨?_, (hc x hx1 hx2).2⟩⟩
  rintro ⟨o, ho, l1, l2⟩
  rcases hnew o ho with ho' | ⟨e1, -⟩
  · exact (hc x hx1 hx2).1 ⟨o, ho', l1, l2⟩
  · omega

/-- `EC` across the adoption of a block above everything it mentions. -/
theorem ec_adopt {p0 : Ptrs} {PL C H WR RH BH WD : BitVec 64} {NW k : Nat} {Γ Γ'' : Gam} {q : Ptrs} {m : Mem} {g : LocalsH}
    {B n : Nat} (hx : Ext Γ Γ'') (hnew : ∀ o ∈ Γ'', o ∈ Γ ∨ (o.lo = B ∧ o.hi = B + n)) (hq : B + n ≤ q.hp)
    (hab : H.toNat + 248 ≤ B ∧ WR.toNat + 32 ≤ B ∧ RH.toNat + 32 ≤ B ∧ BH.toNat + 32 ≤ B ∧ WD.toNat + (NW * 16 + 16) ≤ B)
    (h : EC p0 PL C H WR RH BH WD NW k Γ q m g) : EC p0 PL C H WR RH BH WD NW k Γ'' q m g := by
  obtain ⟨⟨o, ho, hb, ht⟩, hB, hS⟩ := h.i
  obtain ⟨o', ho', hb', ht', -⟩ := hx o ho
  refine ⟨⟨⟨o', ho', hb'.trans hb, ht'.trans ht⟩, fun x hxm => ?_, slObj_ext hx hS⟩, fblk_newTop h.fH hnew hab.1,
    fblk_newTop h.fW hnew hab.2.1, fblk_newTop h.fR hnew hab.2.2.1, fblk_newTop h.fB hnew hab.2.2.2.1,
    fblk_newTop h.fD hnew hab.2.2.2.2, h.oW, h.oR, h.oB, h.dW, h.dR, h.dB, h.ck, h.gl,
    fun j hj => slObj_ext hx (h.wc j hj)⟩
  rcases hnew x hxm with hm | ⟨-, e⟩
  · exact hB x hm
  · omega

/-- `EC … k` across a store at or above the `k`-th entry of the array. -/
theorem ec_cell {p0 : Ptrs} {PL C H WR RH BH WD : BitVec 64} {NW k : Nat} {Γ : Gam} {q : Ptrs} {m mem : Mem} {g : LocalsH}
    {w : BitVec 64} (hord : q.Ordered) (hk : k ≤ NW) (hw : WD.toNat + 16 * k ≤ w.toNat)
    (hmem : ∀ y, y ≠ w → mem y = m y) (h : EC p0 PL C H WR RH BH WD NW k Γ q m g) :
    EC p0 PL C H WR RH BH WD NW k Γ q mem g := by
  have hd : H.toNat + 248 ≤ WD.toNat := by
    have := h.oW
    have := h.dW
    omega
  have keep : ∀ d, d < NW * 16 + 16 → d + 8 ≤ 16 * k → mem (WD + BitVec.ofNat 64 d) = m (WD + BitVec.ofNat 64 d) := by
    intro d hd1 hd2
    obtain ⟨e, -, -, -⟩ := fblk_cell (d := d) hord h.fD hd1
    refine hmem _ fun he => ?_
    rw [he] at e
    omega
  refine ⟨h.i, h.fH, h.fW, h.fR, h.fB, h.fD, h.oW, h.oR, h.oB, h.dW, h.dR, h.dB, ?_, h.gl, fun j hj => ?_⟩
  · rw [← h.ck]
    obtain ⟨e, -, -, -⟩ := fblk_cell (d := 24) hord h.fH (by omega)
    refine Hooks.rd_congr (hmem _ fun he => ?_)
    rw [he] at e
    omega
  · rw [Hooks.rd_congr (keep (16 * j) (by omega) (by omega)), Hooks.rd_congr (keep (16 * j + 8) (by omega) (by omega))]
    exact h.wc j hj

/-- One more entry done. -/
theorem ec_succ {p0 : Ptrs} {PL C H WR RH BH WD : BitVec 64} {NW k : Nat} {Γ : Gam} {q : Ptrs} {m : Mem} {g : LocalsH}
    (h : EC p0 PL C H WR RH BH WD NW k Γ q m g)
    (hj : SlObj Γ (rd m (WD + BitVec.ofNat 64 (16 * k))) (rd m (WD + BitVec.ofNat 64 (16 * k + 8)))) :
    EC p0 PL C H WR RH BH WD NW (k + 1) Γ q m g := by
  refine ⟨h.i, h.fH, h.fW, h.fR, h.fB, h.fD, h.oW, h.oR, h.oB, h.dW, h.dR, h.dB, h.ck, h.gl, fun j hj' => ?_⟩
  by_cases e : j = k
  · subst e
    exact hj
  · exact h.wc j (by omega)

/-- A cell of a fresh block is outside the objects and unallocated at the entry. -/
theorem fblk_out {p0 q : Ptrs} {B : BitVec 64} {sz d : Nat} {Γ : Gam} (hq : q.Ordered) (h : Trie.FBlk p0 B sz Γ q) (hd : d < sz) :
    ¬ InObj Γ (B + BitVec.ofNat 64 d).toNat ∧ ¬ p0.Allocated (B + BitVec.ofNat 64 d).toNat := by
  obtain ⟨e, h1, -, -⟩ := fblk_cell hq h hd
  refine ⟨h1, ?_⟩
  rw [e]
  obtain ⟨-, -, -, -, hc⟩ := h
  exact (hc _ (by omega) (by omega)).2

/-- **The loop body** at index `I`. -/
theorem ph_wdBody {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgr : a.sg.grows = true) (hWd : HypWdFresh σ) {PL C H WR RH BH WD NWw I : BitVec 64} {NW : Nat} (hN32 : NW < 2 ^ 32)
    (hI : I.toNat < NW) {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (PJ a (Trie.LV ((nm "i", Wv I) :: phKvT H WR RH BH NWw)) (EC a.p0 PL C H WR RH BH WD NW I.toNat)) phWdBody
      (PP a (fun m => (I + BitVec.ofNat 64 1).toNat ≤ NW ∧ (I + BitVec.ofNat 64 1).toNat < 2 ^ 63 ∧
          Trie.LV ((nm "i", Wv (I + BitVec.ofNat 64 1)) :: phKvT H WR RH BH NWw) m)
        (EC a.p0 PL C H WR RH BH WD NW (I + BitVec.ofNat 64 1).toNat) Rv) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hAW := Aw.awSpec_encode_withdrawal_rlp (σ := σ) (C := Types.guestC) (H := Hooks.guestHooksR (σ := σ)) hX hF.hal
    Aw.domBelow_guestCtx hF.hH Helpers.tagSlots_guestC Annot.drv_allocG
  have hgwE : FunSpec σ guestCtx (nm "encode_withdrawal_rlp") _ :=
    funSpec_ph_gw (σ := σ) hX (f := nm "encode_withdrawal_rlp") (by conv => lhs; cbv)
  have eI : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := ofNat_add_toNat (by omega)
  rw [eI]
  have hkv : ∀ (s : State σ), ∀ v, Trie.LV ((nm "e", v) :: (nm "i", Wv I) :: phKvT H WR RH BH NWw) s.locals →
      ev s (lv (nm "i")) = some (Wv I) := fun s v hL => Trie.lv_ev hL (by simp)
  have hmulE : I * 16#64 = BitVec.ofNat 64 (16 * I.toNat) := ivMul16 I
  have hmul8E : I * 16#64 + 8#64 = BitVec.ofNat 64 (16 * I.toNat + 8) := ivMul168 I
  unfold phWdBody
  refine pp_decCallAW ha haC hCb haH hfp hsp hgr hAW (by simp) (hgwE.and hWd)
    (L1 := fun v => Trie.LV ((nm "e", v) :: (nm "i", Wv I) :: phKvT H WR RH BH NWw))
    (E1 := fun v Γ q m g => EC a.p0 PL C H WR RH BH WD NW I.toNat Γ q m g ∧
      ∃ B T : BitVec 64, v = .rStruct [Wv B, Wv T] ∧ SlObj Γ B T)
    (L2 := fun m => I.toNat + 1 ≤ NW ∧ I.toNat + 1 < 2 ^ 63 ∧
      Trie.LV ((nm "i", Wv (I + BitVec.ofNat 64 1)) :: phKvT H WR RH BH NWw) m)
    (fun _ _ _ _ h => h.i.2.1) (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_
    (fun s st v hL _ => Trie.lv_new (s := { st with locals := s.locals }) hL (by ph_fresh) v) ?_
    (fun m0 m _ ⟨h1, h2, h3⟩ => ⟨h1, h2, Trie.lv_res h3 (by ph_fresh) _⟩)
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hh hh' hext hnf hmo hB' hmod hPost hLc _
    obtain ⟨hgl, hW⟩ := hLc
    have hord := heap_ord hh
    have hord' := heap_ord hh'
    obtain ⟨B, T, rfl, hB8, h1, h2, hT⟩ := hW _ rfl q q' hh.2.1 hord hh'.2.1
    have hE1 := ec_step hord hord' (Ra.layout_heap haC hh') hext hnf hmo hgl (Nat.le_of_lt hI)
      (fun x hni x1 x2 _ => keep_of_aw hord (Ra.layout_heap haC hh) hmod hni x1 x2) hE
    have hp0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    have hFB : Trie.FBlk a.p0 B 64 Γ' q' := by
      refine ⟨hB8, by decide, by have := hord.1; omega, h2, fun x x1 x2 => ⟨?_, fun hal => ?_⟩⟩
      · rintro ⟨o, ho, l1, l2⟩
        have := hB' o ho
        omega
      · unfold Ptrs.Allocated at hal
        rw [hfp, hsp] at hal
        omega
    obtain ⟨Γ'', hx2, hh2, -, hnew, x, hx, ht, hlo, hhi⟩ := Trie.adopt_blk ha haC haH hgr hh' (n := 64) (by norm_num) rfl hFB
    refine ⟨Γ'', hx2, hh2, ec_adopt hx2 hnew h2 ⟨?_, ?_, ?_, ?_, ?_⟩ hE1, B, T, rfl, x, hx, ht, by omega, by omega⟩
    · have := hE.fH.2.2.2.1; omega
    · have := hE.fW.2.2.2.1; omega
    · have := hE.fR.2.2.2.1; omega
    · have := hE.fB.2.2.2.1; omega
    · have := hE.fD.2.2.2.1; omega
  intro v
  have hord_of : ∀ {Γ q} {s : State σ}, Heap a Γ q s → q.Ordered := fun hh => heap_ord hh
  -- st wd + i * 16, e.0
  refine pp_seq (pp_stCell ha
    (E' := fun Γ q m g => EC a.p0 PL C H WR RH BH WD NW I.toNat Γ q m g ∧ ∃ B T : BitVec 64, v = .rStruct [Wv B, Wv T] ∧
      SlObj Γ B T ∧ rd m (WD + BitVec.ofNat 64 (16 * I.toNat)) = B) ?_ ?_ ?_) ?_
  · intro s Γ q _ hL hE v' hv'
    obtain ⟨B, T, hv, -⟩ := hE.2
    subst hv
    have er := Trie.lv_ev hL (x := nm "e") (v := .rStruct [Wv B, Wv T]) (by simp)
    have e0 : ev s (.rfield 0 (lv (nm "e"))) = some (Wv B) := ev_rfield er 0
    rw [e0] at hv'
    cases hv'
    exact ⟨B, rfl⟩
  · intro s Γ q w _ hL hh hE hw
    have ea : ev s (.op .add [gv (nm "wd_rlp_slices"), .panop .mul [lv (nm "i"), cw 16]]) = some (Wv (WD + I * 16#64)) :=
      ev_add2 hE.1.gl (ev_mul2 (hkv s v hL) (ev_cw s 16))
    rw [ea] at hw
    cases hw
    rw [hmulE]
    exact fblk_out (heap_ord hh) hE.1.fD (by omega)
  · intro s Γ q w x mem _ hL hh hw hx hE hrd hne
    have ea : ev s (.op .add [gv (nm "wd_rlp_slices"), .panop .mul [lv (nm "i"), cw 16]]) = some (Wv (WD + I * 16#64)) :=
      ev_add2 hE.1.gl (ev_mul2 (hkv s v hL) (ev_cw s 16))
    rw [ea] at hw
    cases hw
    obtain ⟨B, T, hv, hS⟩ := hE.2
    subst hv
    have er := Trie.lv_ev hL (x := nm "e") (v := .rStruct [Wv B, Wv T]) (by simp)
    have e0 : ev s (.rfield 0 (lv (nm "e"))) = some (Wv B) := ev_rfield er 0
    rw [e0] at hx
    cases hx
    rw [hmulE] at hrd hne
    obtain ⟨e1, -, -, -⟩ := fblk_cell (d := 16 * I.toNat) (heap_ord hh) hE.1.fD (by omega)
    exact ⟨ec_cell (heap_ord hh) (Nat.le_of_lt hI) (by omega) hne hE.1, _, T, rfl, hS, hrd⟩
  -- st wd + i * 16 + 8, e.1
  refine pp_seq (pp_stCell ha (E' := EC a.p0 PL C H WR RH BH WD NW (I.toNat + 1)) ?_ ?_ ?_) ?_
  · intro s Γ q _ hL hE v' hv'
    obtain ⟨B, T, hv, -⟩ := hE.2
    subst hv
    have er := Trie.lv_ev hL (x := nm "e") (v := .rStruct [Wv B, Wv T]) (by simp)
    have e0 : ev s (.rfield 1 (lv (nm "e"))) = some (Wv T) := ev_rfield er 1
    rw [e0] at hv'
    cases hv'
    exact ⟨T, rfl⟩
  · intro s Γ q w _ hL hh hE hw
    have ea : ev s (.op .add [gv (nm "wd_rlp_slices"), .panop .mul [lv (nm "i"), cw 16], cw 8]) =
        some (Wv (WD + (I * 16#64 + 8#64))) :=
      ev_add3 hE.1.gl (ev_mul2 (hkv s v hL) (ev_cw s 16)) (ev_cw s 8)
    rw [ea] at hw
    cases hw
    rw [hmul8E]
    exact fblk_out (heap_ord hh) hE.1.fD (by omega)
  · intro s Γ q w x mem _ hL hh hw hx hE hrd hne
    have ea : ev s (.op .add [gv (nm "wd_rlp_slices"), .panop .mul [lv (nm "i"), cw 16], cw 8]) =
        some (Wv (WD + (I * 16#64 + 8#64))) :=
      ev_add3 hE.1.gl (ev_mul2 (hkv s v hL) (ev_cw s 16)) (ev_cw s 8)
    rw [ea] at hw
    cases hw
    obtain ⟨B, T, hv, hS, hc0⟩ := hE.2
    subst hv
    have er := Trie.lv_ev hL (x := nm "e") (v := .rStruct [Wv B, Wv T]) (by simp)
    have e0 : ev s (.rfield 1 (lv (nm "e"))) = some (Wv T) := ev_rfield er 1
    rw [e0] at hx
    cases hx
    rw [hmul8E] at hrd hne
    obtain ⟨e1, -, -, -⟩ := fblk_cell (d := 16 * I.toNat + 8) (heap_ord hh) hE.1.fD (by omega)
    obtain ⟨e2, -, -, -⟩ := fblk_cell (d := 16 * I.toNat) (heap_ord hh) hE.1.fD (by omega)
    have hk0 : mem (WD + BitVec.ofNat 64 (16 * I.toNat)) = s.memory (WD + BitVec.ofNat 64 (16 * I.toNat)) :=
      hne _ fun he => by rw [he] at e2; omega
    refine ec_succ (ec_cell (heap_ord hh) (Nat.le_of_lt hI) (by omega) hne hE.1) ?_
    rw [Hooks.rd_congr hk0, hc0, hrd]
    exact hS
  -- i = i + 1
  refine pp_assign ha.hH fun s _ hL v' hv' => ⟨by omega, by omega, ?_⟩
  rw [ev_add2 (hkv s v hL) (ev_cw s 1)] at hv'
  cases hv'
  exact Trie.lv_new (Trie.lv_mono hL fun p hp => List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hp)) (by ph_fresh) _

/-- **The loop.** -/
theorem ph_wdLoop {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgr : a.sg.grows = true) (hWd : HypWdFresh σ) {PL C H WR RH BH WD NWw : BitVec 64} {NW : Nat} (hN32 : NW < 2 ^ 32)
    (hNW : NWw.toNat = NW) {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (fun s => ∃ I : BitVec 64, PJ a (fun m => I.toNat ≤ NW ∧ I.toNat < 2 ^ 63 ∧
        Trie.LV ((nm "i", Wv I) :: phKvT H WR RH BH NWw) m) (EC a.p0 PL C H WR RH BH WD NW I.toNat) s) phWdLoop
      (PP a (Trie.LV (phKvT H WR RH BH NWw)) (EC a.p0 PL C H WR RH BH WD NW NW) Rv) := by
  unfold phWdLoop
  refine pp_whileN ha.hH (fun I m => I.toNat ≤ NW ∧ I.toNat < 2 ^ 63 ∧ Trie.LV ((nm "i", Wv I) :: phKvT H WR RH BH NWw) m)
    (fun I => EC a.p0 PL C H WR RH BH WD NW I.toNat) (fun I => I + BitVec.ofNat 64 1) ?_ ?_
  · intro I s hs ⟨⟨⟨h1, h2, hL⟩, Γ, q, he, hh, hE⟩, hc⟩ hg
    have hlt := Aw.less_lt (x := I) (y := NWw) h2
      (cmp_true' (Trie.lv_ev hL (x := nm "i") (v := Wv I) (by simp))
        (Trie.lv_ev hL (x := nm "nwd") (v := Wv NWw) (by simp [phKvT])) hc)
    exact ph_wdBody ha haC hCb haH hfp hsp hgr hWd hN32 (by omega) s hs ⟨hL, Γ, q, he, hh, hE⟩ hg
  · rintro I s _ ⟨⟨h1, h2, hL⟩, Γ, q, he, hh, hE⟩ hc
    have hf := Spec.cmp_val_false hc (Trie.lv_ev hL (x := nm "i") (v := Wv I) (by simp))
      (Trie.lv_ev hL (x := nm "nwd") (v := Wv NWw) (by simp [phKvT]))
    have hle := Rec.signed_ge h2 (by omega) hf
    have e : I.toNat = NW := by omega
    rw [e] at hE
    exact ⟨Trie.lv_mono hL fun p hp => List.mem_cons_of_mem _ hp, Γ, q, he, hh, hE⟩

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.pp_whileN
#print axioms InitECandidate.Solver.MemSafe.Exb.ec_adopt
#print axioms InitECandidate.Solver.MemSafe.Exb.ec_cell
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_wdBody
#print axioms InitECandidate.Solver.MemSafe.Exb.ph_wdLoop
