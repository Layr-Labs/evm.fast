import InitECandidate.Solver.MemSafe.Frames.ChainXG
import InitECandidate.Solver.MemSafe.Frames.FinDefs
import InitECandidate.Solver.MemSafe.Frames.LogGen

/-!
# The log writers' step rule (package L)

`msgTys` now contains the log list types (`logTys`), so a callee whose footprint is in `PWtopM`
keeps every log list cell, and `GP`'s `LogsG` is stable (`ChainXG.logsG_step`). The three log writers
(`log_append`, `emit_transfer_log`, `incorporate_child_on_success`) write list cells; their
footprint is `PWtopL` (the old `PWtopM`, outside the message / block objects only), and what they
do to the lists is described by **`LogSub`**: every element of a list afterwards is an element of
the list before, or a log record in range. `chainE_logStep` derives the chain extension from it.

* `HdrTy`, `LHd`/`LNn`/`LEl`: the header types and the cells of a list.
* `PWtopL`, `MsgKeep0`, `XKeepW`: the old footprint / keep (message and block objects only).
* `gp0_step`, `xAbove0_step`: the non-log part of `GP` / `XAbove` stays under `XKeepW`.
* `LogSub` and `logSub_trans`.
* **`chainE_logStep`**.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-! ## The non-log part of `GP` / `XAbove` under `XKeepW` -/

theorem blk_keepW {Γ : Gam} {m m' : Mem} {f : Frame} {M : Obj} (hM : MsgObj Γ (msgOf m f) M)
    (h : XKeepW guestC Γ m m' f) {k : Nat} (hk : k ∈ msgXOffs) :
    fld m' (msgOf m' f) k = fld m (msgOf m f) k := by
  have hmo : msgOf m' f = msgOf m f := h.1 14 (by simp [evXSlots])
  rw [hmo]
  obtain ⟨hMΓ, hMb, hMt, hMs⟩ := hM
  have hmt : M.ty ∈ msgTys0 := by rcases hMt with h' | h' <;> rw [h'] <;> decide
  have hp := msg_addrProt hMt
  simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl
  · have := h.2 M hMΓ hmt 2 (by unfold Obj.HasSlot; omega) hp.1
    unfold fld; rw [← hMb]; exact this
  · have := h.2 M hMΓ hmt 4 (by unfold Obj.HasSlot; omega) hp.2
    unfold fld; rw [← hMb]; exact this

theorem gp0_step {Γ Γ' : Gam} {m m' : Mem} {p p' : Ptrs} {f : Frame} (hord : p.Ordered)
    (hord' : p'.Ordered) (hmo : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p')
    (hx : XKeepW guestC Γ m m' f)
    (h : (∃ M, MsgObj Γ (msgOf m f) M) ∧
      (∀ k ∈ msgXOffs, BufOK guestC Γ p (fld m (msgOf m f) k).toNat 20) ∧
      (∃ L, LstObj Γ (fld m f.1 88) L) ∧ (∃ D, DelObj Γ (fld m f.1 136) D) ∧ MarkV m f.1) :
    (∃ M, MsgObj Γ' (msgOf m' f) M) ∧
      (∀ k ∈ msgXOffs, BufOK guestC Γ' p' (fld m' (msgOf m' f) k).toNat 20) ∧
      (∃ L, LstObj Γ' (fld m' f.1 88) L) ∧ (∃ D, DelObj Γ' (fld m' f.1 136) D) ∧ MarkV m' f.1 := by
  obtain ⟨⟨M, hM⟩, hB, ⟨L, hL⟩, ⟨D, hD⟩, hMk⟩ := h
  obtain ⟨M', hM', -⟩ := msgObj_ext hext hM
  obtain ⟨L', hL', -⟩ := lstObj_ext hext hL
  obtain ⟨D', hD', -⟩ := delObj_ext hext hD
  have h11 : fld m' f.1 88 = fld m f.1 88 := hx.1 11 (by simp [evXSlots])
  have h17 : fld m' f.1 136 = fld m f.1 136 := hx.1 17 (by simp [evXSlots])
  have h14 : msgOf m' f = msgOf m f := hx.1 14 (by simp [evXSlots])
  have h26 : fld m' f.1 208 = fld m f.1 208 := hx.1 26 (by simp [evXSlots])
  have h28 : fld m' f.1 224 = fld m f.1 224 := hx.1 28 (by simp [evXSlots])
  refine ⟨⟨M', by rw [h14]; exact hM'⟩,
    fun k hk => by rw [blk_keepW hM hx hk]; exact bufOK_stepX hord hord' hmo hext hnf (hB k hk),
    ⟨L', by rw [h11]; exact hL'⟩, ⟨D', by rw [h17]; exact hD'⟩, ?_⟩
  unfold MarkV; rw [h26, h28]; exact hMk

theorem xAbove0_step {Γ Γ' : Gam} {m m' : Mem} {mk mm : Nat} {f : Frame}
    (hext : Ext Γ Γ') (hx : XKeepW guestC Γ m m' f)
    (h : (∃ M, MsgObj Γ (msgOf m f) M ∧ Above guestC mk mm M) ∧
      (∀ k ∈ msgXOffs, BlkAbove mk mm (fld m (msgOf m f) k).toNat 20) ∧
      (∃ L, LstObj Γ (fld m f.1 88) L ∧ Above guestC mk mm L) ∧
      (∃ D, DelObj Γ (fld m f.1 136) D ∧ Above guestC mk mm D)) :
    (∃ M, MsgObj Γ' (msgOf m' f) M ∧ Above guestC mk mm M) ∧
      (∀ k ∈ msgXOffs, BlkAbove mk mm (fld m' (msgOf m' f) k).toNat 20) ∧
      (∃ L, LstObj Γ' (fld m' f.1 88) L ∧ Above guestC mk mm L) ∧
      (∃ D, DelObj Γ' (fld m' f.1 136) D ∧ Above guestC mk mm D) := by
  obtain ⟨⟨M, hM, hMa⟩, hB, ⟨L, hL, hLa⟩, ⟨D, hD, hDa⟩⟩ := h
  obtain ⟨M', hM', hb1, ht1⟩ := msgObj_ext hext hM
  obtain ⟨L', hL', hb2, ht2⟩ := lstObj_ext hext hL
  obtain ⟨D', hD', hb3, ht3⟩ := delObj_ext hext hD
  have h11 : fld m' f.1 88 = fld m f.1 88 := hx.1 11 (by simp [evXSlots])
  have h17 : fld m' f.1 136 = fld m f.1 136 := hx.1 17 (by simp [evXSlots])
  have h14 : msgOf m' f = msgOf m f := hx.1 14 (by simp [evXSlots])
  exact ⟨⟨M', by rw [h14]; exact hM', above_bt hb1 ht1 (msg_region hM.2.2.1) hMa⟩,
    fun k hk => by rw [blk_keepW hM hx hk]; exact hB k hk,
    ⟨L', by rw [h11]; exact hL', above_bt hb2 ht2 (lst_region hL.2.2.1) hLa⟩,
    ⟨D', by rw [h17]; exact hD', above_bt hb3 ht3 (hD.2.2 ▸ del_region) hDa⟩⟩

/-! ## `LogSub` -/

theorem lst8_hdr {t : Nat} (h : t ∈ Hooks.lstTys) (he : Hooks.lstE t = 8) : HdrTy t := by
  simp only [Hooks.lstTys, List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl
  · exact Or.inl rfl
  · exact Or.inr rfl
  all_goals (exfalso; simp [Hooks.lstE] at he)

theorem logsIn_def {Γ : Gam} {m : Mem} {hp : Nat} {e : BitVec 64} :
    LogsIn Γ m hp e ↔ ∀ i, i < LNn m (fld m e 88) → LogRecF Γ hp m (LEl m (fld m e 88) i) := Iff.rfl

/-! ## The chain extension under a log writer -/

/-- **A log writer keeps the chain extension.** `hx`: the message / EV cells of every frame are
kept; `hLst`: the list hook at the end (every log header has its array); `hSub`: what the writer
did to the lists. -/
theorem chainE_logStep {Γ Γ' : Gam} {s t : State σ} {fs : List Frame} {p p' : Ptrs}
    (hp' : ptrsOf t = some p') (hp : ptrsOf s = some p) (hord : p.Ordered) (hord' : p'.Ordered)
    (hL' : Layout guestC p' Γ') (hmo : p.Mono p') (hext : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' p p')
    (hx : ∀ f ∈ fs, XKeepW guestC Γ s.memory t.memory f)
    (hck : ∀ f ∈ fs, ∀ k ∈ ckXSlots, fld t.memory f.2 k = fld s.memory f.2 k)
    (hLst : LstArrAt Γ' t.memory) (hSub : LogSub Γ Γ' p'.hp s.memory t.memory)
    (h : ChainE GP GR Γ s fs) : ChainE GP GR Γ' t fs := by
  refine ⟨fun q hq f hf => ?_, fun ch pa ha => ?_⟩
  · obtain rfl := ptrs_some hp' hq
    obtain ⟨hA, hB, hC, hD, hMV, hLG⟩ := h.1 p hp f hf
    have hgp0 := gp0_step hord hord' hmo hext hnf (hx f hf) ⟨hA, hB, hC, hD, hMV⟩
    obtain ⟨L, hLΓ, hLb, hLt, hLe⟩ := hC
    have hhdr := lst8_hdr hLt hLe
    obtain ⟨hAr, hEl⟩ := hSub L hLΓ hhdr
    obtain ⟨L', hL'Γ, hL'b, hL't, -⟩ := hext L hLΓ
    have h11 : fld t.memory f.1 88 = fld s.memory f.1 88 := (hx f hf).1 11 (by simp [evXSlots])
    have hbase : fld t.memory f.1 88 = L.base := by rw [h11, hLb]
    obtain ⟨y, hy, hyt, hyb, hys⟩ := hLst L' hL'Γ (hL't ▸ hhdr)
    rw [hL'b] at hyb hys
    refine ⟨hgp0.1, hgp0.2.1, hgp0.2.2.1, hgp0.2.2.2.1, hgp0.2.2.2.2, ⟨⟨y, hy, hyt, ?_, ?_⟩, ?_⟩⟩
    · rw [hbase]; exact hyb
    · show 8 * (rd t.memory (fld t.memory f.1 88 + BitVec.ofNat 64 8)).toNat ≤ y.size
      rw [hbase]; exact hys
    · intro i hi
      have hi' : i < LNn t.memory L.base := by rw [hbase] at hi; exact hi
      rw [hbase]
      rcases hEl i hi' with ⟨j, hj, he⟩ | hr
      · obtain ⟨-, hin⟩ := hLG
        have hj' : j < (rd s.memory (fld s.memory f.1 88 + BitVec.ofNat 64 8)).toNat := by
          rw [← hLb]; exact hj
        have := hin j hj'
        rw [← hLb] at this
        show LogRecF Γ' _ _ (LEl t.memory L.base i)
        rw [he]
        exact logRecF_step hmo hext
          (fun o ho ht k hk => (hx f hf).2 o ho (by rw [ht]; decide) k hk (by rw [ht]; exact tlog_prot k)) this
      · exact hr
  · obtain ⟨hch, hpa⟩ := adj_mem ha
    obtain ⟨hne, hA, h40⟩ := h.2 ch pa ha
    have hxc := hx ch hch
    have hxp := hx pa (List.mem_of_mem_tail hpa)
    have hmk : mkOf t.memory ch.2 = mkOf s.memory ch.2 := by
      unfold mkOf; rw [hck ch hch ckMark (by simp [ckXSlots, ckChainSlots])]
    have hmm : mmOf t.memory ch.2 = mmOf s.memory ch.2 := by
      unfold mmOf; rw [hck ch hch ckMemMark (by simp [ckXSlots, ckChainSlots])]
    refine ⟨?_, ?_, ?_⟩
    · have a := hxc.1 17 (by simp [evXSlots])
      have b := hxp.1 17 (by simp [evXSlots])
      show fld t.memory ch.1 136 ≠ fld t.memory pa.1 136
      have a' : fld t.memory ch.1 136 = fld s.memory ch.1 136 := a
      have b' : fld t.memory pa.1 136 = fld s.memory pa.1 136 := b
      rw [a', b']; exact hne
    · rw [hmk, hmm]
      obtain ⟨hA1, hA2, hA3, hA4, X, hX, hXa⟩ := hA
      have h4 := xAbove0_step hext hxp ⟨hA1, hA2, hA3, hA4⟩
      obtain ⟨L, hLo, hLa⟩ := hA3
      obtain ⟨hLΓ, hLb, hLt, hLe⟩ := hLo
      have hhdr := lst8_hdr hLt hLe
      obtain ⟨hAr, -⟩ := hSub L hLΓ hhdr
      obtain ⟨L', hL'Γ, hL'b, hL't, -⟩ := hext L hLΓ
      have h11 : fld t.memory pa.1 88 = fld s.memory pa.1 88 := hxp.1 11 (by simp [evXSlots])
      have hbase : fld t.memory pa.1 88 = L.base := by rw [h11, hLb]
      obtain ⟨y, hy, hyt, hyb, hys⟩ := hLst L' hL'Γ (hL't ▸ hhdr)
      rw [hL'b] at hyb hys
      have hGO : GamOK Γ' := gamOK_of_layout hL'
      refine ⟨h4.1, h4.2.1, h4.2.2.1, h4.2.2.2, y, ⟨hy, hyt, ?_, ?_⟩, ?_⟩
      · rw [hbase]; exact hyb
      · show 8 * (rd t.memory (fld t.memory pa.1 88 + BitVec.ofNat 64 8)).toNat ≤ y.size
        rw [hbase]; exact hys
      · rcases hAr with hsame | ⟨y0, hy0, hy0b, hy0t⟩
        · obtain ⟨hXΓ, hXt, hXb, hXs⟩ := hX
          obtain ⟨X', hX', hXb', hXt', -⟩ := hext X hXΓ
          have hyX : y.base = X'.base := by
            rw [hyb, hsame, hXb', hXb, ← hLb]
          have := base_eq hGO hX' hy hyX
          subst this
          exact above_bt (o := X) (by rw [hyX, hXb']) (by rw [hXt']) (lstA_region hXt) hXa
        · have : y = y0 := base_eq hGO hy0 hy (by rw [hyb, hy0b])
          subst this
          exact above_heap (by rw [hy0t]; decide)
    · have h40' : fld t.memory ch.2 40 = fld s.memory ch.2 40 :=
        hck ch hch 40 (by simp [ckXSlots])
      have h14 : msgOf t.memory ch = msgOf s.memory ch := hxc.1 14 (by simp [evXSlots])
      rw [h40', h14]; exact h40

/-- **A freshly created frame satisfies the log facts**: its list is empty. -/
theorem logsG_of_lgEmp {Γ : Gam} {m : Mem} {hp : Nat} {e : BitVec 64} {L : Obj}
    (hb : L.base = fld m e 88) (he : LgEmp Γ m L) : LogsG Γ m hp e := by
  obtain ⟨hn, y, hy, hty, hyb⟩ := he
  have hc0 : L.cell 0 = L.base := by simp [Obj.cell]
  have hc1 : L.cell 1 = L.base + BitVec.ofNat 64 8 := rfl
  have hN : (rd m (fld m e 88 + BitVec.ofNat 64 8)).toNat = 0 := by
    rw [← hb, ← hc1, hn]; rfl
  refine ⟨⟨y, hy, hty, ?_, by rw [hN]; omega⟩, fun i hi => ?_⟩
  · rw [← hb, ← hc0]; exact hyb
  · rw [hN] at hi; omega


/-- The list hook at the end state gives every log header its array. -/
theorem lstArrAt_of_G {H : Hooks σ} (hLH : LstHooks H) {Γ' : Gam} {t : State σ}
    (hG : G guestC H Γ' t) : LstArrAt Γ' t.memory := by
  intro L hL hMh
  have hMt : L.ty ∈ Hooks.lstTys := by rcases hMh with h | h <;> rw [h] <;> decide
  have hME : Hooks.lstE L.ty = 8 := by rcases hMh with h | h <;> rw [h] <;> decide
  obtain ⟨-, hnc, -, z, hz, hzb, hzt, hzs⟩ := HtabEntries.lst_hook hLH hG hL hMt
  have hc0 : L.cell 0 = L.base := by simp [Obj.cell]
  have hc1 : L.cell 1 = L.base + BitVec.ofNat 64 8 := rfl
  refine ⟨z, hz, by rcases hzt with h | ⟨h, -⟩ <;> [exact Or.inl h; exact Or.inr h], ?_, ?_⟩
  · rw [hzb]; unfold Hooks.lP; rw [hc0]
  · rw [hME] at hzs
    unfold LNn
    have : (rd t.memory (L.base + BitVec.ofNat 64 8)).toNat ≤ (Hooks.lC t.memory L).toNat := by
      rw [← hc1]; exact hnc
    omega

/-- **The guest's chain extension survives a log writer.** -/
theorem logStep_guest : LogStepOK σ guestC GP GR :=
  fun hp' hp hord hord' hL' hmo hext hnf hx hck hLst hSub h =>
    chainE_logStep hp' hp hord hord' hL' hmo hext hnf hx hck hLst hSub h

/-- **A summary core of a log writer keeps the chain extension** (`PWtopL` footprint, the lists
described by `LogSub`). -/
theorem chainE_sumCoreL {H : Hooks σ} (hLH : LstHooks H) {tEV tCK : Nat}
    (hF : FrameCfg guestC H tEV tCK)
    (hevX : ∀ j ∈ evXSlots, (guestC.ty tEV).slot j = .prot) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {PWx : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p p' : Ptrs} (hG : G guestC H Γ s)
    (hc : SumCore guestC H sg PWx Γ s vs r t Γ' p p')
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a)
    (hpw : ∀ a, ProtCell guestC Γ a → PWx a → PWtopL tEV tCK ks vs s Γ a)
    {top : BitVec 64} (htop : gword s nmEv = some top)
    (htopo : ∃ o ∈ Γ, o.base = top ∧ o.ty = tEV) {fs : List Frame}
    (hobj : ∀ f ∈ fs, (∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK))
    (hSub : LogSub Γ Γ' p'.hp s.memory t.memory)
    (h : ChainE GP GR Γ s fs) : ChainE GP GR Γ' t fs :=
  chainE_sumCoreLG hF logStep_guest (fun hG' => lstArrAt_of_G hLH hG') hevX hks hksX hG hc hac hpw
    htop htopo hobj hSub h

end InitECandidate.Solver.MemSafe.Frames
