import InitECandidate.Solver.MemSafe.Frames.ChainX
import InitECandidate.Solver.MemSafe.LogDefs
import InitECandidate.Solver.MemSafe.Hooks.List
import InitECandidate.Solver.MemSafe.Frames.Run
import InitECandidate.Solver.MemSafe.Inc.Steps

/-!
# The guest's chain extension (frames7, decision 2(b)/(c))

The guest instance of `ChainX` (`ChainX.lean`):

* **`GP Γ m p f`** (every live frame `f`):
  - the message `msgOf m f` (`EV_MSG`) is a `Γ` object of type `tMSGh` / `tMSGs` of at least 176
    bytes (its slots 2 / 4, CALLER / CURRENT_TARGET, are `prot` since the Types change);
  - the 20-byte address blocks at the message's CALLER (16) and CURRENT_TARGET (32) are `BufOK`
    (scalar cells of `Γ` objects, or allocated cells outside `Γ`): decision 2(b), option B;
  - `EV_LOGS` (88) is a `Γ` list header with element size 8, `EV_DELETE` (136) a `Γ` header of
    type `tHTs20` (the `incorporate_child_on_success` facts `Inc.IcsX`, decision 2(c)).
* **`GR Γ m ch pa`** (every child / parent pair): the two deletion tables differ, the
  parent's extension objects and address blocks survive the release of the child to its marks
  (`XAbove`), and the child's `CK_MSG` (40) is its `EV_MSG` (frames9: the message
  `finish_child` hands to `create_finish`).

**`xCfg_guest : XCfg guestC tEV tCK GP GR`**: the stability obligations. Also `xAbove_live`
(everything of a frame survives a release to the current allocator pointers: the marks a new
child takes), `xAbove_step`, `blkAbove_of_bufOK`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-! ## The predicates -/

/-- The bytes `[b, b + n)` lie where a release to the marks `mk` / `mm` keeps them allocated:
heap, scratch above `mk`, or frame memory below `mm`. -/
def BlkAbove (mk mm b n : Nat) : Prop :=
  ∀ a : BitVec 64, Overlap b n a →
    (heapBase ≤ a.toNat ∧ a.toNat < heapEnd) ∨ mk ≤ a.toNat ∨ (heapEnd ≤ a.toNat ∧ a.toNat < mm)

/-- The message of a frame is a `Γ` MSG object. -/
def MsgObj (Γ : Gam) (b : BitVec 64) (M : Obj) : Prop :=
  M ∈ Γ ∧ M.base = b ∧ (M.ty = tMSGh ∨ M.ty = tMSGs) ∧ 176 ≤ M.size

/-- The log list of a frame is a `Γ` list header with element size 8. -/
def LstObj (Γ : Gam) (b : BitVec 64) (L : Obj) : Prop :=
  L ∈ Γ ∧ L.base = b ∧ L.ty ∈ Hooks.lstTys ∧ Hooks.lstE L.ty = 8

/-- The deletion table of a frame is a `Γ` header of type `tHTs20`. -/
def DelObj (Γ : Gam) (b : BitVec 64) (D : Obj) : Prop :=
  D ∈ Γ ∧ D.base = b ∧ D.ty = tHTs20

/-- **`LogsIn Γ m hp e`** (package L): every element of the log list of the frame `e`
(`EV_LOGS`, slot 11, a list header with `PTR = h[0]`, `N = h[8]`) is a log record in range. -/
def LogsIn (Γ : Gam) (m : Mem) (hp : Nat) (e : BitVec 64) : Prop :=
  ∀ i, i < (rd m (fld m e 88 + BitVec.ofNat 64 8)).toNat →
    LogRecF Γ hp m (rd m (rd m (fld m e 88) + BitVec.ofNat 64 (8 * i)))

/-- The array of the log list of the frame `e`: a list array of `Γ` at `PTR`, with room for `N`
elements. -/
def LogArr (Γ : Gam) (m : Mem) (e : BitVec 64) (x : Obj) : Prop :=
  x ∈ Γ ∧ Hooks.IsLstA x.ty ∧ x.base = rd m (fld m e 88) ∧
    8 * (rd m (fld m e 88 + BitVec.ofNat 64 8)).toNat ≤ x.size

/-- The log facts of a frame (`LogsIn` and the array it reads). -/
def LogsG (Γ : Gam) (m : Mem) (hp : Nat) (e : BitVec 64) : Prop :=
  (∃ x, LogArr Γ m e x) ∧ LogsIn Γ m hp e

/-- **The guest's per-frame facts.** -/
def GP (Γ : Gam) (m : Mem) (p : Ptrs) (f : Frame) : Prop :=
  (∃ M, MsgObj Γ (msgOf m f) M) ∧
  (∀ k ∈ msgXOffs, BufOK guestC Γ p (fld m (msgOf m f) k).toNat 20) ∧
  (∃ L, LstObj Γ (fld m f.1 88) L) ∧
  (∃ D, DelObj Γ (fld m f.1 136) D) ∧ MarkV m f.1 ∧ LogsG Γ m p.hp f.1

/-- The extension objects and address blocks of `f` survive a release to `mk` / `mm`. -/
def XAbove (Γ : Gam) (m : Mem) (mk mm : Nat) (f : Frame) : Prop :=
  (∃ M, MsgObj Γ (msgOf m f) M ∧ Above guestC mk mm M) ∧
  (∀ k ∈ msgXOffs, BlkAbove mk mm (fld m (msgOf m f) k).toNat 20) ∧
  (∃ L, LstObj Γ (fld m f.1 88) L ∧ Above guestC mk mm L) ∧
  (∃ D, DelObj Γ (fld m f.1 136) D ∧ Above guestC mk mm D) ∧
  (∃ x, LogArr Γ m f.1 x ∧ Above guestC mk mm x)

/-- **The guest's child / parent facts.** -/
def GR (Γ : Gam) (m : Mem) (ch pa : Frame) : Prop :=
  fld m ch.1 136 ≠ fld m pa.1 136 ∧ XAbove Γ m (mkOf m ch.2) (mmOf m ch.2) pa ∧
    fld m ch.2 40 = msgOf m ch

/-! ## Regions -/

theorem msg_region {t : Nat} (h : t = tMSGh ∨ t = tMSGs) : (guestC.ty t).region ≠ .fmem := by
  rcases h with rfl | rfl <;> decide

theorem lst_region {t : Nat} (h : t ∈ Hooks.lstTys) : (guestC.ty t).region ≠ .fmem := by
  simp only [Hooks.lstTys, List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl <;> decide

theorem del_region : (guestC.ty tHTs20).region ≠ .fmem := by decide

/-- `Above` of a heap / scratch object depends only on its base and type. -/
theorem above_bt {mk mm : Nat} {o o' : Obj} (hb : o'.base = o.base) (ht : o'.ty = o.ty)
    (hr : (guestC.ty o.ty).region ≠ .fmem) (h : Above guestC mk mm o) : Above guestC mk mm o' := by
  unfold Above at *
  rw [ht]
  cases hrr : (guestC.ty o.ty).region with
  | heap => trivial
  | fmem => exact absurd hrr hr
  | scratch => rw [hrr] at h; unfold Obj.lo at *; rw [hb]; exact h

/-! ## Transport along a step -/

/-- `BufOK` survives a step of the typed heap (`SCRunT.bufOK_step`). -/
theorem bufOK_stepX {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    (hm : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') {b n : Nat}
    (h : BufOK C Γ p b n) : BufOK C Γ' p' b n := by
  intro a ha
  rcases h a ha with ⟨o, ho, k, hk, hsc, rfl⟩ | ⟨hni, hal⟩
  · obtain ⟨o', ho', hb, ht, hsz⟩ := hext o ho
    refine Or.inl ⟨o', ho', k, ?_, by rw [ht]; exact hsc, by unfold Obj.cell; rw [hb]⟩
    unfold Obj.HasSlot at hk ⊢; omega
  · refine Or.inr ⟨fun ⟨o', ho', h1, h2⟩ => ?_, allocated_mono hm hal⟩
    rcases hnf o' ho' a h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | hf
    · exact hni ⟨o0, ho0, h3, h4⟩
    · exact fresh_not_alloc hord hord' hm hf hal

/-- Survival to deeper marks implies survival to lower marks (`FinRel.above_mono`). -/
theorem above_monoX {C : Cfg} {mk mm mk2 mm2 : Nat} (h1 : mk ≤ mk2) (h2 : mm2 ≤ mm) {o : Obj}
    (h : Above C mk2 mm2 o) : Above C mk mm o := by
  unfold Above at *
  cases hr : (C.ty o.ty).region <;> simp only [hr] at h ⊢ <;> omega

theorem msgObj_ext {Γ Γ' : Gam} {b : BitVec 64} {M : Obj} (hext : Ext Γ Γ') (h : MsgObj Γ b M) :
    ∃ M', MsgObj Γ' b M' ∧ M'.base = M.base ∧ M'.ty = M.ty := by
  obtain ⟨hM, hb, ht, hs⟩ := h
  obtain ⟨M', hM', hb', ht', hs'⟩ := hext M hM
  exact ⟨M', ⟨hM', hb'.trans hb, ht'.symm ▸ ht, by omega⟩, hb', ht'⟩

theorem lstObj_ext {Γ Γ' : Gam} {b : BitVec 64} {L : Obj} (hext : Ext Γ Γ') (h : LstObj Γ b L) :
    ∃ L', LstObj Γ' b L' ∧ L'.base = L.base ∧ L'.ty = L.ty := by
  obtain ⟨hL, hb, ht, he⟩ := h
  obtain ⟨L', hL', hb', ht', -⟩ := hext L hL
  exact ⟨L', ⟨hL', hb'.trans hb, ht'.symm ▸ ht, ht'.symm ▸ he⟩, hb', ht'⟩

theorem delObj_ext {Γ Γ' : Gam} {b : BitVec 64} {D : Obj} (hext : Ext Γ Γ') (h : DelObj Γ b D) :
    ∃ D', DelObj Γ' b D' ∧ D'.base = D.base ∧ D'.ty = D.ty := by
  obtain ⟨hD, hb, ht⟩ := h
  obtain ⟨D', hD', hb', ht', -⟩ := hext D hD
  exact ⟨D', ⟨hD', hb'.trans hb, ht'.trans ht⟩, hb', ht'⟩

theorem msgTys_guest : msgTys = [tMSGh, tMSGs, tBOS, tBO, tMCO, tLOG, tTX, tPL, tSLA, tSI, tLSTh, tLSTs, tLSTAh,
    tLSTAs] := rfl

/-- The MSG slots 2 (CALLER) and 4 (CURRENT_TARGET) are `prot` (the Types change). -/
theorem msg_addrProt {t : Nat} (h : t = tMSGh ∨ t = tMSGs) :
    (guestC.ty t).slot 2 = .prot ∧ (guestC.ty t).slot 4 = .prot := by
  rcases h with rfl | rfl <;> exact ⟨rfl, rfl⟩

theorem fld88_keep {C : Cfg} {Γ : Gam} {m m' : Mem} {f : Frame} (h : XKeep C Γ m m' f) :
    fld m' f.1 88 = fld m f.1 88 :=
  h.1 11 (by simp [evXSlots])

theorem fld136_keep {C : Cfg} {Γ : Gam} {m m' : Mem} {f : Frame} (h : XKeep C Γ m m' f) :
    fld m' f.1 136 = fld m f.1 136 :=
  h.1 17 (by simp [evXSlots])

theorem markV_keep {C : Cfg} {Γ : Gam} {m m' : Mem} {f : Frame} (h : XKeep C Γ m m' f)
    (hk : MarkV m f.1) : MarkV m' f.1 := by
  have h1 : fld m' f.1 208 = fld m f.1 208 := h.1 26 (by simp [evXSlots])
  have h2 : fld m' f.1 224 = fld m f.1 224 := h.1 28 (by simp [evXSlots])
  unfold MarkV
  rw [h1, h2]
  exact hk

/-- The address words of a frame's message are kept. -/
theorem blk_keep {Γ : Gam} {m m' : Mem} {f : Frame} {M : Obj} (hM : MsgObj Γ (msgOf m f) M)
    (h : XKeep guestC Γ m m' f) {k : Nat} (hk : k ∈ msgXOffs) :
    fld m' (msgOf m' f) k = fld m (msgOf m f) k := by
  rw [msgOf_keep h]
  obtain ⟨hMΓ, hMb, hMt, hMs⟩ := hM
  have hmt : M.ty ∈ msgTys := by rcases hMt with h' | h' <;> rw [h'] <;> decide
  have hp := msg_addrProt hMt
  simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl
  · have := h.2 M hMΓ hmt 2 (by unfold Obj.HasSlot; omega) hp.1
    unfold fld; rw [← hMb]; exact this
  · have := h.2 M hMΓ hmt 4 (by unfold Obj.HasSlot; omega) hp.2
    unfold fld; rw [← hMb]; exact this

/-! ## The log facts (package L) -/

theorem lst8_log {t : Nat} (h : t ∈ Hooks.lstTys) (he : Hooks.lstE t = 8) : t ∈ logTys := by
  simp only [Hooks.lstTys, List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl <;> first | (simp [logTys]; done) | (exfalso; simp [Hooks.lstE] at he)

theorem lstA_log {t : Nat} (h : Hooks.IsLstA t) : t ∈ logTys := by
  rcases h with rfl | rfl <;> simp [logTys]

theorem lstA_region {t : Nat} (h : Hooks.IsLstA t) : (guestC.ty t).region ≠ .fmem := by
  rcases h with rfl | rfl <;> decide

theorem lst_hasSlot {p : Ptrs} {Γ : Gam} (hL : Layout guestC p Γ) {L : Obj} (hLΓ : L ∈ Γ)
    (ht : L.ty ∈ Hooks.lstTys) {k : Nat} (hk : k < 3) : L.HasSlot k := by
  have h1 := (hL.1 L hLΓ).2.2.2.1
  have h2 := Hooks.lst_minSz L.ty ht
  unfold Obj.HasSlot
  rw [h2] at h1
  omega

/-- The header cells `PTR`, `N` of a frame's log list are kept. -/
theorem logHdr_keep {p : Ptrs} {Γ : Gam} {m m' : Mem} {f : Frame} (hL : Layout guestC p Γ)
    (hx : XKeep guestC Γ m m' f) (hlst : ∃ L, LstObj Γ (fld m f.1 88) L) :
    rd m' (fld m' f.1 88) = rd m (fld m f.1 88) ∧
      rd m' (fld m' f.1 88 + BitVec.ofNat 64 8) = rd m (fld m f.1 88 + BitVec.ofNat 64 8) := by
  obtain ⟨L, hLΓ, hLb, hLt, hLe⟩ := hlst
  have hty : L.ty ∈ msgTys := logTys_msgTys _ (lst8_log hLt hLe)
  have h0 := hx.2 L hLΓ hty 0 (lst_hasSlot hL hLΓ hLt (by omega)) (Hooks.lst_prot _ hLt 0)
  have h1 := hx.2 L hLΓ hty 1 (lst_hasSlot hL hLΓ hLt (by omega)) (Hooks.lst_prot _ hLt 1)
  rw [fld88_keep hx]
  refine ⟨?_, ?_⟩
  · rw [← hLb]; simpa [Obj.cell] using h0
  · rw [← hLb]; simpa [Obj.cell] using h1

theorem logArr_keep {p : Ptrs} {Γ Γ' : Gam} {m m' : Mem} {f : Frame} (hL : Layout guestC p Γ)
    (hext : Ext Γ Γ') (hx : XKeep guestC Γ m m' f) (hlst : ∃ L, LstObj Γ (fld m f.1 88) L)
    {x : Obj} (h : LogArr Γ m f.1 x) :
    ∃ x', LogArr Γ' m' f.1 x' ∧ x'.base = x.base ∧ x'.ty = x.ty := by
  obtain ⟨hk0, hk1⟩ := logHdr_keep hL hx hlst
  obtain ⟨hxΓ, hxt, hxb, hxs⟩ := h
  obtain ⟨x', hx', hb, ht, hsz⟩ := hext x hxΓ
  refine ⟨x', ⟨hx', ht ▸ hxt, ?_, ?_⟩, hb, ht⟩
  · rw [hk0, ← hxb, hb]
  · rw [hk1]; omega

/-- `MsgKeep` keeps the frozen cells. -/
theorem logKeep_of_msgKeep {Γ : Gam} {m m' : Mem} (h : MsgKeep guestC Γ m m') : LogKeep Γ m m' :=
  fun o ho ht k hk => h o ho (by rw [ht]; decide) k hk (by rw [ht]; exact tlog_prot k)

theorem logsG_step {Γ Γ' : Gam} {m m' : Mem} {p p' : Ptrs} {f : Frame} (hord : p.Ordered)
    (hord' : p'.Ordered) (hL : Layout guestC p Γ) (hmo : p.Mono p') (hext : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' p p') (hx : XKeep guestC Γ m m' f)
    (hlst : ∃ L, LstObj Γ (fld m f.1 88) L) (h : LogsG Γ m p.hp f.1) :
    LogsG Γ' m' p'.hp f.1 := by
  obtain ⟨hk0, hk1⟩ := logHdr_keep hL hx hlst
  obtain ⟨⟨x, hxa⟩, hin⟩ := h
  obtain ⟨x', hx', hb, ht⟩ := logArr_keep hL hext hx hlst hxa
  refine ⟨⟨x', hx'⟩, fun i hi => ?_⟩
  rw [hk1] at hi
  rw [hk0]
  have hel : rd m' (rd m (fld m f.1 88) + BitVec.ofNat 64 (8 * i)) =
      rd m (rd m (fld m f.1 88) + BitVec.ofNat 64 (8 * i)) := by
    obtain ⟨hxΓ, hxt, hxb, hxs⟩ := hxa
    have hty : x.ty ∈ msgTys := logTys_msgTys _ (lstA_log hxt)
    have := hx.2 x hxΓ hty i (by unfold Obj.HasSlot; omega) (Hooks.lstA_prot hxt i)
    rw [← hxb]
    simpa [Obj.cell] using this
  rw [hel]
  exact logRecF_step hmo hext (logKeep_of_msgKeep hx.2) (hin i hi)

theorem logsG_release {Γ : Gam} {m : Mem} {hp mk mm : Nat} {f : Frame} {x : Obj}
    (hx : LogArr Γ m f.1 x) (hxa : Above guestC mk mm x) (h : LogsG Γ m hp f.1) :
    LogsG (relKeep guestC mk mm Γ) m hp f.1 := by
  obtain ⟨-, hin⟩ := h
  obtain ⟨hxΓ, hxt, hxb, hxs⟩ := hx
  refine ⟨⟨x, mem_relKeep.mpr ⟨hxΓ, hxa⟩, hxt, hxb, hxs⟩, fun i hi => ?_⟩
  obtain ⟨⟨h1, h2, o, ho, hb, ht, hs⟩, hf⟩ := hin i hi
  refine ⟨⟨h1, h2, o, mem_relKeep.mpr ⟨ho, ?_⟩, hb, ht, hs⟩, hf⟩
  unfold Above
  rw [ht, tlog_region]
  trivial

/-- `XAbove` along a step (the marks given). -/
theorem xAbove_step {Γ Γ' : Gam} {m m' : Mem} {p : Ptrs} {mk mm : Nat} {f : Frame}
    (hLay : Layout guestC p Γ) (hext : Ext Γ Γ')
    (hx : XKeep guestC Γ m m' f) (h : XAbove Γ m mk mm f) : XAbove Γ' m' mk mm f := by
  obtain ⟨⟨M, hM, hMa⟩, hB, ⟨L, hL, hLa⟩, ⟨D, hD, hDa⟩, ⟨X, hX, hXa⟩⟩ := h
  obtain ⟨M', hM', hb1, ht1⟩ := msgObj_ext hext hM
  obtain ⟨L', hL', hb2, ht2⟩ := lstObj_ext hext hL
  obtain ⟨D', hD', hb3, ht3⟩ := delObj_ext hext hD
  refine ⟨⟨M', by rw [msgOf_keep hx]; exact hM', above_bt hb1 ht1 (msg_region hM.2.2.1) hMa⟩,
    fun k hk => by rw [blk_keep hM hx hk]; exact hB k hk,
    ⟨L', by rw [fld88_keep hx]; exact hL', above_bt hb2 ht2 (lst_region hL.2.2.1) hLa⟩,
    ⟨D', by rw [fld136_keep hx]; exact hD', above_bt hb3 ht3 (hD.2.2 ▸ del_region) hDa⟩,
    ?_⟩
  obtain ⟨X', hX', hb4, ht4⟩ := logArr_keep hLay hext hx ⟨L, hL⟩ hX
  exact ⟨X', hX', above_bt hb4 ht4 (lstA_region hX.2.1) hXa⟩

theorem gp_step {Γ Γ' : Gam} {m m' : Mem} {p p' : Ptrs} {f : Frame} (hord : p.Ordered)
    (hord' : p'.Ordered) (hLay : Layout guestC p Γ) (hmo : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p')
    (hx : XKeep guestC Γ m m' f) (h : GP Γ m p f) : GP Γ' m' p' f := by
  obtain ⟨⟨M, hM⟩, hB, ⟨L, hL⟩, ⟨D, hD⟩, hMk, hLog⟩ := h
  obtain ⟨M', hM', -⟩ := msgObj_ext hext hM
  obtain ⟨L', hL', -⟩ := lstObj_ext hext hL
  obtain ⟨D', hD', -⟩ := delObj_ext hext hD
  exact ⟨⟨M', by rw [msgOf_keep hx]; exact hM'⟩,
    fun k hk => by rw [blk_keep hM hx hk]; exact bufOK_stepX hord hord' hmo hext hnf (hB k hk),
    ⟨L', by rw [fld88_keep hx]; exact hL'⟩, ⟨D', by rw [fld136_keep hx]; exact hD'⟩,
    markV_keep hx hMk, logsG_step hord hord' hLay hmo hext hnf hx ⟨L, hL⟩ hLog⟩

theorem gr_step {Γ Γ' : Gam} {m m' : Mem} {p : Ptrs} {ch pa : Frame} (hLay : Layout guestC p Γ)
    (hext : Ext Γ Γ')
    (hxc : XKeep guestC Γ m m' ch) (hxp : XKeep guestC Γ m m' pa)
    (hck : ∀ k ∈ ckXSlots, fld m' ch.2 k = fld m ch.2 k) (h : GR Γ m ch pa) : GR Γ' m' ch pa := by
  obtain ⟨hne, hA, h40⟩ := h
  have hmk : mkOf m' ch.2 = mkOf m ch.2 := by
    unfold mkOf; rw [hck ckMark (by simp [ckXSlots, ckChainSlots])]
  have hmm : mmOf m' ch.2 = mmOf m ch.2 := by
    unfold mmOf; rw [hck ckMemMark (by simp [ckXSlots, ckChainSlots])]
  refine ⟨by rw [fld136_keep hxc, fld136_keep hxp]; exact hne, ?_, ?_⟩
  · rw [hmk, hmm]
    exact xAbove_step hLay hext hxp hA
  · rw [hck 40 (by simp [ckXSlots]), msgOf_keep hxc]; exact h40

/-! ## Liveness: everything of a frame survives a release to the current pointers -/

/-- A `BufOK` block lies in the live part of the address space. -/
theorem blkAbove_of_bufOK {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ)
    {b n : Nat} (h : BufOK C Γ p b n) : BlkAbove p.sp p.fp b n := by
  intro a ha
  have hal : p.Allocated a.toNat := by
    rcases h a ha with ⟨o, ho, k, hk, -, rfl⟩ | ⟨-, hal⟩
    · obtain ⟨o', ho', h1, h2⟩ := cell_in hord hL ho hk
      exact obj_alloc hord hL ho' h1 h2
    · exact hal
  unfold Ptrs.Allocated at hal
  unfold Ptrs.Ordered at hord
  omega

/-- A `Γ` object survives a release to the current pointers. -/
theorem above_liveX {C : Cfg} {Γ : Gam} {p : Ptrs} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) :
    Above C p.sp p.fp o := by
  have hv := live_of hL ho
  unfold Above
  cases hr : (C.ty o.ty).region with
  | heap => trivial
  | scratch => exact (hv.2.2 hr).1
  | fmem => exact (hv.2.1 hr).2

/-- **The facts of a frame give its release facts for marks at the current pointers.** -/
theorem xAbove_live {Γ : Gam} {m : Mem} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {f : Frame} (h : GP Γ m p f) : XAbove Γ m p.sp p.fp f := by
  obtain ⟨⟨M, hM⟩, hB, ⟨L, hLo⟩, ⟨D, hD⟩, -, ⟨X, hX⟩, -⟩ := h
  exact ⟨⟨M, hM, above_liveX hL hM.1⟩, fun k hk => blkAbove_of_bufOK hord hL (hB k hk),
    ⟨L, hLo, above_liveX hL hLo.1⟩, ⟨D, hD, above_liveX hL hD.1⟩, ⟨X, hX, above_liveX hL hX.1⟩⟩

/-! ## The release -/

theorem blkAbove_mono {mk mm mk2 mm2 b n : Nat} (h1 : mk ≤ mk2) (h2 : mm2 ≤ mm)
    (h : BlkAbove mk2 mm2 b n) : BlkAbove mk mm b n := by
  intro a ha
  rcases h a ha with h' | h' | h' <;> omega

theorem xAbove_mono {Γ : Gam} {m : Mem} {mk mm mk2 mm2 : Nat} (h1 : mk ≤ mk2) (h2 : mm2 ≤ mm)
    {f : Frame} (h : XAbove Γ m mk2 mm2 f) : XAbove Γ m mk mm f := by
  obtain ⟨⟨M, hM, hMa⟩, hB, ⟨L, hLo, hLa⟩, ⟨D, hD, hDa⟩, ⟨X, hX, hXa⟩⟩ := h
  exact ⟨⟨M, hM, above_monoX h1 h2 hMa⟩, fun k hk => blkAbove_mono h1 h2 (hB k hk),
    ⟨L, hLo, above_monoX h1 h2 hLa⟩, ⟨D, hD, above_monoX h1 h2 hDa⟩, ⟨X, hX, above_monoX h1 h2 hXa⟩⟩

/-- The objects of `XAbove` at the release marks are kept by the release. -/
theorem xAbove_relKeep {Γ : Gam} {m : Mem} {mk mm mk2 mm2 : Nat} (h1 : mk ≤ mk2) (h2 : mm2 ≤ mm)
    {f : Frame} (h : XAbove Γ m mk2 mm2 f) : XAbove (relKeep guestC mk mm Γ) m mk2 mm2 f := by
  obtain ⟨⟨M, hM, hMa⟩, hB, ⟨L, hLo, hLa⟩, ⟨D, hD, hDa⟩, ⟨X, hX, hXa⟩⟩ := h
  exact ⟨⟨M, ⟨mem_relKeep.mpr ⟨hM.1, above_monoX h1 h2 hMa⟩, hM.2⟩, hMa⟩, hB,
    ⟨L, ⟨mem_relKeep.mpr ⟨hLo.1, above_monoX h1 h2 hLa⟩, hLo.2⟩, hLa⟩,
    ⟨D, ⟨mem_relKeep.mpr ⟨hD.1, above_monoX h1 h2 hDa⟩, hD.2⟩, hDa⟩,
    ⟨X, ⟨mem_relKeep.mpr ⟨hX.1, above_monoX h1 h2 hXa⟩, hX.2.1, hX.2.2.1, hX.2.2.2⟩, hXa⟩⟩

/-- `BufOK` of a block that survives the release. -/
theorem bufOK_release {C : Cfg} {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout C p Γ)
    {mk mm : Nat} (hsp : RelSplit C Γ mk mm) (hmk : p.sp < mk) (hmkE : mk ≤ scratchEnd)
    (hmmE : heapEnd ≤ mm) (hmm : mm ≤ p.fp) {b n : Nat} (hA : BlkAbove mk mm b n)
    (h : BufOK C Γ p b n) : BufOK C (relKeep C mk mm Γ) ⟨p.hp, mm, mk⟩ b n := by
  intro a ha
  have hO := hord
  unfold Ptrs.Ordered at hO
  rcases h a ha with ⟨o, ho, k, hk, hsc, rfl⟩ | ⟨hni, hal⟩
  · refine Or.inl ⟨o, mem_relKeep.mpr ⟨ho, ?_⟩, k, hk, hsc, rfl⟩
    obtain ⟨h1, -⟩ := cell_toNat hord hL ho hk
    have hv := live_of hL ho
    have hkk : 8 * k + 8 ≤ o.size := hk
    have hpos := (lay_obj hL ho).2.2.1
    have hA' := hA _ ha
    rw [h1] at hA'
    unfold Above
    cases hr : (C.ty o.ty).region with
    | heap => trivial
    | scratch =>
        have hv' := hv.2.2 hr
        rcases (hsp o ho).1 hr with h' | h'
        · exfalso; unfold Obj.hi Obj.lo at *; omega
        · exact h'
    | fmem =>
        have hv' := hv.2.1 hr
        rcases (hsp o ho).2 hr with h' | h'
        · exact h'
        · exfalso; unfold Obj.hi Obj.lo at *; omega
  · refine Or.inr ⟨fun ⟨o, ho, h1, h2⟩ => hni ⟨o, (mem_relKeep.mp ho).1, h1, h2⟩, ?_⟩
    have hA' := hA a ha
    unfold Ptrs.Allocated at hal ⊢
    simp only
    have : heapBase ≤ heapEnd := by decide
    omega

theorem gp_release {Γ : Gam} {m : Mem} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {mk mm : Nat} (hsp : RelSplit guestC Γ mk mm) (hmk : p.sp < mk) (hmkE : mk ≤ scratchEnd)
    (hmmE : heapEnd ≤ mm) (hmm : mm ≤ p.fp) {f : Frame} (hA : XAbove Γ m mk mm f)
    (h : GP Γ m p f) : GP (relKeep guestC mk mm Γ) m ⟨p.hp, mm, mk⟩ f := by
  obtain ⟨⟨M, hM, hMa⟩, hBA, ⟨L, hLo, hLa⟩, ⟨D, hD, hDa⟩, ⟨X, hX, hXa⟩⟩ := hA
  exact ⟨⟨M, mem_relKeep.mpr ⟨hM.1, hMa⟩, hM.2⟩,
    fun k hk => bufOK_release hord hL hsp hmk hmkE hmmE hmm (hBA k hk) (h.2.1 k hk),
    ⟨L, mem_relKeep.mpr ⟨hLo.1, hLa⟩, hLo.2⟩, ⟨D, mem_relKeep.mpr ⟨hD.1, hDa⟩, hD.2⟩,
    h.2.2.2.2.1, logsG_release hX hXa h.2.2.2.2.2⟩

/-- Every frame of `fs` has a predecessor in `ch :: fs`. -/
theorem adj_pred {ch : Frame} : ∀ {fs : List Frame} {f : Frame}, f ∈ fs →
    ∃ l1 g l2, ch :: fs = l1 ++ g :: f :: l2
  | [], _, h => absurd h (List.not_mem_nil)
  | x :: xs, f, h => by
      rcases List.mem_cons.mp h with rfl | h'
      · exact ⟨[], ch, xs, rfl⟩
      · obtain ⟨l1, g, l2, he⟩ := adj_pred (ch := x) h'
        exact ⟨ch :: l1, g, l2, by rw [he]; rfl⟩

/-- **The guest's stability obligations.** -/
theorem xCfg_guest : XCfg guestC tEV tCK GP GR where
  step hord hord' hL _ hmo hext hnf hx h := gp_step hord hord' hL hmo hext hnf hx h
  stepR _ _ hL _ _ hext _ hxc hxp hck h := gr_step hL hext hxc hxp hck h
  release := by
    intro Γ m p ch fs hord hL hsp hmk hmkE hmmE hmm hord2 hP hR
    -- the release facts of every frame of `fs`, at the child's marks
    have hA : ∀ f ∈ fs, XAbove Γ m (mkOf m ch.2) (mmOf m ch.2) f := by
      intro f hf
      obtain ⟨l1, g, l2, he⟩ := adj_pred (ch := ch) hf
      have hR' := (hR g f ⟨l1, l2, he⟩).2.1
      cases l1 with
      | nil =>
          simp only [List.nil_append, List.cons.injEq] at he
          rw [← he.1] at hR'
          exact hR'
      | cons x l1 =>
          simp only [List.cons_append, List.cons.injEq] at he
          obtain ⟨-, he⟩ := he
          have := hord2 l1 g (f :: l2) he (by simp)
          exact xAbove_mono (le_of_lt this.1) (le_of_lt this.2) hR'
    refine ⟨fun f hf => gp_release hord hL hsp hmk hmkE hmmE hmm (hA f hf) (hP f hf),
      fun g f ha => ?_⟩
    obtain ⟨l1, l2, he⟩ := ha
    obtain ⟨hne, hgA, h40⟩ := hR g f ⟨ch :: l1, l2, by rw [he]; rfl⟩
    have := hord2 l1 g (f :: l2) he (by simp)
    exact ⟨hne, xAbove_relKeep (le_of_lt this.1) (le_of_lt this.2) hgA, h40⟩

/-! ## `incorporate_child_on_success`'s facts -/

/-- **The `Inc.IcsX` facts of a child / parent pair** (`FinHyps.ic`'s extra precondition), at the
heap pointer `p.hp`: the child's log list is described by `LogsG`. -/
theorem icsX_of {Γ : Gam} {m : Mem} {p : Ptrs} {ch pa : Frame} (hPp : GP Γ m p pa)
    (hPc : GP Γ m p ch) (hR : GR Γ m ch pa) : Inc.IcsX Γ m p.hp pa.1 ch.1 := by
  obtain ⟨-, -, ⟨L, hL, hLb, hLt, hLe⟩, ⟨D, hD, hDb, hDt⟩, -⟩ := hPp
  obtain ⟨-, -, ⟨Lc, hLc, hLcb, hLct, hLce⟩, ⟨S, hS, hSb, hSt⟩, -, ⟨x, hx, hxt, hxb, hxs⟩, hin⟩ := hPc
  exact ⟨⟨⟨L, hL, hLb, hLt, hLe⟩, ⟨tHTs20, by decide, ⟨D, hD, hDb, hDt⟩, ⟨S, hS, hSb, hSt⟩⟩,
    fun h => hR.1 h.symm⟩, ⟨Lc, hLc, hLcb, hLct, hLce⟩, ⟨x, hx, hxt, hxb, hxs⟩, hin⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.xCfg_guest
#print axioms InitECandidate.Solver.MemSafe.Frames.xAbove_live
#print axioms InitECandidate.Solver.MemSafe.Frames.icsX_of
