import InitECandidate.Solver.MemSafe.Rec.TxRecUpd

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the access-list block

```
if t != 0 {
  var {1,1} al = tx_list_item(arr, k);
  var {1,1} acc = decode_access_list(al.0, al.1);
  st tx + 208, acc.0;  st tx + 216, acc.1;  k = k + 1;
}
```
Stage 7 -> 8.  The flag `b27` (slot 27 is still `0`) is consumed.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

variable {σ : Type} {X : Ctx 64}

/-- a result variable holds a 2-word struct -/
def Lr2 (Ar A : BitVec 64) (tt s : Nat) (nal nrn : MlS) (vAl v : ValueHOL 64) : LocalsH → Prop :=
  fun m => LsN Ar A tt s nal vAl m ∧ m.lookup nrn = some v ∧ ∃ r c : BitVec 64, v = .rStruct [Wd r, Wd c]

def AccP (Pt Nt : BitVec 64) (Γ : Gam) (mem : Mem) (v : ValueHOL 64) : Prop :=
  ∀ recs cnt : BitVec 64, v = .rStruct [Wd recs, Wd cnt] → Pk Γ mem recs cnt ∧
    ∀ j, j < cnt.toNat → LocIn Pt Nt (rd mem (recs + BitVec.ofNat 64 (24 * j))) 20

def AccS (Ar : BitVec 64) (mem : Mem) (v : ValueHOL 64) : Prop :=
  ∀ recs cnt : BitVec 64, v = .rStruct [Wd recs, Wd cnt] → cl Ar mem 26 = recs

def EAcc1 (a : Act σ) (Ar A cnt Pt Nt : BitVec 64) (vAl v : ValueHOL 64) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem g => withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt true true) Γ q mem g ∧ AccP Pt Nt Γ mem v

def EAcc2 (a : Act σ) (Ar A cnt Pt Nt : BitVec 64) (vAl v : ValueHOL 64) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem g => EAcc1 a Ar A cnt Pt Nt vAl v Γ q mem g ∧ AccS Ar mem v

theorem lr2_shape {Ar A : BitVec 64} {tt s : Nat} {nal nrn : MlS} {vAl v : ValueHOL 64}
    {m : LocalsH} (h : Lr2 Ar A tt s nal nrn vAl v m) :
    ∃ r c : BitVec 64, v = .rStruct [Wd r, Wd c] ∧ m.lookup nrn = some (.rStruct [Wd r, Wd c]) := by
  obtain ⟨-, hl, r, c, hv⟩ := h
  exact ⟨r, c, hv, hv ▸ hl⟩

theorem lr2_eq {r c r' c' : BitVec 64} {v : ValueHOL 64} (hv : v = .rStruct [Wd r, Wd c])
    (hv' : v = .rStruct [Wd r', Wd c']) : r = r' ∧ c = c' := by
  rw [hv] at hv'
  simp only [Wd, ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hv'
  exact hv'

theorem st_ptr_acc {a : Act σ} (ha : ActOK a X) {Ar A cnt Pt Nt : BitVec 64} {tt s : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {vAl v : ValueHOL 64} :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s (nm "al") (nm "acc") vAl v) (EAcc1 a Ar A cnt Pt Nt vAl v))
      (txrSt 208 (.rfield 0 (lv (nm "acc"))))
      (DQ a Ar 400 (Lr2 Ar A tt s (nm "al") (nm "acc") vAl v) (EAcc2 a Ar A cnt Pt Nt vAl v)) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s' hs hL w hw
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 208)] at hw
    cases hw
    exact ⟨26, by norm_num, rfl⟩
  · intro s' hs hL v' hv'
    obtain ⟨r, c, -, hl⟩ := lr2_shape hL
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
    cases hv'
    exact ⟨r, rfl⟩
  · intro s' Γ q j x mem hs hL hj hw hx hrd hmod hB ⟨⟨hE, hAl⟩, hAcc⟩
    obtain ⟨r, c, hvrc, hl⟩ := lr2_shape hL
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 208)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := 208) (b := 8 * j) (by omega) (by omega) hw
    have hj26 : j = 26 := by omega
    subst hj26
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
    obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := hE
    have h26 := tf_set26 hmod (h27 rfl) hT
    have hE' := et2_upd (a := a) (g := s'.globals) (b27' := true) (b35' := true) 26 (by norm_num) hmod h26.1 h26.2
      (fun _ => ⟨rfl, by norm_num⟩) (fun _ => ⟨rfl, by norm_num⟩) hAr hB (Or.inr (Or.inl ⟨rfl, rfl⟩))
      ⟨⟨hT, h27, h35⟩, hEA⟩
    have hR : ∀ y, y = Ar + BitVec.ofNat 64 (8 * 26) → Overlap Ar.toNat 400 y := fun y hy => by
      rw [hy]; exact blkcell hAr (by norm_num)
    refine ⟨⟨⟨hE', hAl⟩, ?_⟩, ?_⟩
    · intro recs cnt hv
      obtain ⟨hPk, hLc⟩ := hAcc recs cnt hv
      refine ⟨pk_store (R := fun y => y = Ar + BitVec.ofNat 64 (8 * 26)) (fun y hy => hmod y hy) hR hB hPk,
        fun j hj => ?_⟩
      obtain ⟨x', hx', -, hc, -, hin⟩ := acc_addr_info hPk.2.1 hj
      have hne : recs + BitVec.ofNat 64 (24 * j) ≠ Ar + BitVec.ofNat 64 (8 * 26) := fun e => by
        rw [hc] at e
        rw [e] at hin
        exact (hB _ (hR _ rfl)).1 hin
      rw [rd_congr (hmod _ hne)]
      exact hLc j hj
    · intro recs cnt hv
      obtain ⟨h1, h2⟩ := lr2_eq hvrc hv
      show rd mem (Ar + BitVec.ofNat 64 (8 * 26)) = recs
      rw [hrd, ← hx, h1]


theorem st_cnt_acc {a : Act σ} (ha : ActOK a X) {Ar A cnt Pt Nt : BitVec 64} {tt s : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {vAl v : ValueHOL 64} :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s (nm "al") (nm "acc") vAl v) (EAcc2 a Ar A cnt Pt Nt vAl v))
      (txrSt 216 (.rfield 1 (lv (nm "acc"))))
      (DQ a Ar 400 (Lr2 Ar A tt s (nm "al") (nm "acc") vAl v)
        (withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false true))) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s' hs hL w hw
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 216)] at hw
    cases hw
    exact ⟨27, by norm_num, rfl⟩
  · intro s' hs hL v' hv'
    obtain ⟨r, c, -, hl⟩ := lr2_shape hL
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
    cases hv'
    exact ⟨c, rfl⟩
  · intro s' Γ q j x mem hs hL hj hw hx hrd hmod hB ⟨⟨⟨hE, hAl⟩, hAcc⟩, hS⟩
    obtain ⟨r, c, hvrc, hl⟩ := lr2_shape hL
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 216)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := 216) (b := 8 * j) (by omega) (by omega) hw
    have hj27 : j = 27 := by omega
    subst hj27
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
    obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := hE
    have hP : Pk Γ s'.memory (cl Ar s'.memory 26) x := by
      rw [hS r c hvrc, ← hx]; exact (hAcc r c hvrc).1
    have h27' := tf_set27 hmod hrd hP hAr hB hT
    refine ⟨et2_upd (a := a) (g := s'.globals) (b27' := false) (b35' := true) 27 (by norm_num) hmod
      h27'.1 h27'.2 (fun h => absurd h (by simp)) (fun _ => ⟨rfl, by norm_num⟩) hAr hB (Or.inr (Or.inr ?_))
      ⟨⟨hT, h27, h35⟩, hEA⟩, hAl⟩
    have hK0 : TxK Ar Pt Nt s'.memory := hEA.2.2.2.2.2.2
    have e27 : cl Ar mem 27 = c := by unfold cl; rw [hrd, ← hx]
    have e26 : cl Ar mem 26 = r := by rw [h27'.2 26 (by norm_num) (by norm_num)]; exact hS r c hvrc
    obtain ⟨hPk, hLc⟩ := hAcc r c hvrc
    refine ⟨by rw [h27'.2 19 (by norm_num) (by norm_num)]; exact hK0.1, fun j hj => ?_⟩
    rw [e27] at hj
    rw [e26]
    obtain ⟨x', hx', -, hc, -, hin⟩ := acc_addr_info hPk.2.1 hj
    have hne : r + BitVec.ofNat 64 (24 * j) ≠ Ar + BitVec.ofNat 64 (8 * 27) := fun e => by
      rw [hc] at e
      rw [e] at hin
      exact (hB _ (blkcell hAr (by norm_num))).1 hin
    rw [rd_congr (hmod _ hne)]
    exact hLc j hj

theorem kinc_acc {a : Act σ} (ha : ActOK a X) {Ar A : BitVec 64} {tt s s' : Nat} {vAl v : ValueHOL 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (h : txrKst s' tt = txrKst s tt + 1) :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s (nm "al") (nm "acc") vAl v) E) (txrK 1)
      (DQ a Ar 400 (Lr2 Ar A tt s' (nm "al") (nm "acc") vAl v) E) := by
  unfold txrK
  refine hoareG_assignDI ha.hH ?_
  intro s0 hs hL v0 hv0
  obtain ⟨⟨hbl, hal⟩, hacc, hsh⟩ := hL
  rw [ev_add2 (ev_lw (bl_k hbl)) (ev_cw _ 1)] at hv0
  cases hv0
  have hb := bl_setk (s := s0) (BitVec.ofNat 64 (txrKst s tt) + BitVec.ofNat 64 1) hbl
  refine ⟨⟨?_, ?_⟩, ?_, hsh⟩
  · unfold BLs; rw [h, ← BitVec.ofNat_add_ofNat]; exact hb
  · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "al")]; exact hal
  · rw [lk_set_ne _ _ (by decide : nm "k" ≠ nm "acc")]; exact hacc

theorem txr_acc_inner {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat)
    (h8 : txrKst 8 tt = txrKst 7 tt + 1) (vAl : ValueHOL 64) :
    HoareG σ X (DI a Ar 400 (LsN Ar A tt 7 (nm "al") vAl)
        (withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt true true)))
      (.decCall (nm "acc") (.comb [.one, .one]) (nm "decode_access_list")
        [.rfield 0 (lv (nm "al")), .rfield 1 (lv (nm "al"))]
        (.seq (txrSt 208 (.rfield 0 (lv (nm "acc"))))
          (.seq (txrSt 216 (.rfield 1 (lv (nm "acc")))) (txrK 1))))
      (DQ a Ar 400 (LsN Ar A tt 8 (nm "al") vAl)
        (withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false true))) := by
  refine hoareG_decCallPreQD ha hcs.acc (by simp [acSig]) (by simp [acSig]) (fun _ => hgr)
    (L' := fun v => Lr2 Ar A tt 7 (nm "al") (nm "acc") vAl v)
    (E' := fun v => EAcc1 a Ar A cnt Pt Nt vAl v)
    (L2 := fun v => Lr2 Ar A tt 8 (nm "al") (nm "acc") vAl v)
    (E2 := fun v => withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false true))
    (Lf := LsN Ar A tt 8 (nm "al") vAl) (Ef := withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false true))
    ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · intro s' hs hL vs hvs
    rw [evs_len2 hvs]; simp [acSig]
  · intro s' st v hL hsh
    obtain ⟨r, c, rfl⟩ := rstruct_of_shape hsh
    refine ⟨⟨bl_set (s := ({ st with locals := s'.locals } : State σ)) (by decide) _ hL.1, ?_⟩,
      lk_set_self _ _ _, r, c, rfl⟩
    rw [lk_set_ne _ _ (by decide : nm "acc" ≠ nm "al")]; exact hL.2
  · intro s' vs Γ q callee hs hL hvs hh ⟨hE, b, c, hv, h1, h2, h3, h4⟩
    rw [hv] at hL
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) evs_nil)] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some q := hh.2.1
    have hmo0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    exact ⟨b, c, rfl, h1, q, hpe, by omega⟩
  · intro s' st vs callee v Γ Γ' q q' hs hL hvs he hh hB hn ⟨hE, b, c, hv, h1, h2, h3, h4⟩ co hret hQ hsh
    rw [hv] at hL
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w hL.2 rfl) evs_nil)] at hvs
    cases hvs
    obtain ⟨r, c', rfl⟩ := rstruct_of_shape hsh
    have hQ' := hQ _ rfl b c rfl
    refine ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, ⟨⟨?_, b, c, hv, h1, h2, h3, h4⟩, ?_⟩⟩
    · exact et2_call hcs.hCb true true hAr acSig [Wd b, Wd c] Γ Γ' q q' s' st s'.globals st.globals (coa_of_co co _)
        (fun x hx => argCells_any (by simp [acSig]) hx) hB hE
    · intro recs cnt hv'
      obtain ⟨k1, k2, k3, k4⟩ := hQ' recs cnt hv'
      refine ⟨⟨by omega, k2, k3⟩, fun j hj => ?_⟩
      obtain ⟨l1, l2⟩ := k4 j hj
      obtain ⟨m1, m2⟩ := h4
      exact ⟨by omega, by omega⟩
  · intro v
    refine hoareG_seqDQ (st_ptr_acc ha hAr) (hoareG_seqDQ (st_cnt_acc ha hAr) (kinc_acc ha h8))
  · intro m0 m v hL hm
    exact ⟨bl_res (by decide) _ hm.1.1, by rw [lookup_resVarEq_ne _ _ (by decide : nm "acc" ≠ nm "al")]; exact hm.1.2⟩
  · intro v Γ q mem g h
    exact h


theorem et2_flag27 {a : Act σ} {Ar A cnt Pt Nt : BitVec 64} {b35 : Bool} {Γ : Gam} {q : Ptrs}
    {mem : Mem} {g : LocalsH} (h : ET2 a Ar A cnt Pt Nt true b35 Γ q mem g) :
    ET2 a Ar A cnt Pt Nt false b35 Γ q mem g :=
  ⟨⟨h.1.1, fun h => absurd h (by simp), h.1.2.2⟩, h.2⟩

/-- stage 7 -> 8 -/
theorem txr_acc {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat)
    (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 7) (ET2 a Ar A cnt Pt Nt true true)) txrAcc
      (DQ a Ar 400 (BLs Ar A tt 8) (ET2 a Ar A cnt Pt Nt false true)) := by
  unfold txrAcc
  by_cases h0 : tt = 0
  · subst h0
    refine hoareG_iteF (fun s hs hD => cond_false .notEqual 0 hD.1 (by rw [(txrCmpT 0 htt).1]; decide)) ?_
    refine hoareG_skip fun s hs hD => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩
    exact di_mono (fun m h => by simpa [BLs, txrKst] using h) (fun _ _ _ _ h => et2_flag27 h) hD
  · refine hoareG_iteT (w0 := 1) (by decide)
      (fun s hs hD => cond_true .notEqual 0 hD.1 (by rw [(txrCmpT tt htt).1]; simpa using h0)) ?_
    have hI : txrKst 7 tt < cnt.toNat := by
      rw [hcnt]; interval_cases tt <;> simp [txrKst, txrNfOf] at h0 ⊢
    have h8 : txrKst 8 tt = txrKst 7 tt + 1 := by simp [txrKst, h0]
    refine txr_litem ha hcs hAr tt 7 (nm "al") (by decide) (lv (nm "k")) (txrKst 7 tt) hI
      (fun s' hL => ev_lw (bl_k hL)) (L2 := fun v => LsN Ar A tt 8 (nm "al") v)
      (E2 := fun v => withP (AlFact a Pt Nt v) (ET2 a Ar A cnt Pt Nt false true))
      (Lf := BLs Ar A tt 8) (Ef := ET2 a Ar A cnt Pt Nt false true) ?_ ?_ ?_
    · intro v
      exact txr_acc_inner ha hcs hgr hAr tt h8 v
    · intro m0 m v _ hm
      exact bl_res (by decide) _ hm.1
    · intro v Γ q mem g h
      exact h.1

end InitECandidate.Solver.MemSafe.Rec
