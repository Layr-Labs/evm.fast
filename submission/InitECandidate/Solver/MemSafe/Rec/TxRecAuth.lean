import InitECandidate.Solver.MemSafe.Rec.TxRecBlob

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the authorizations block (stage 9 -> 10)

```
if t == 4 {
  var {1,1} aul = tx_list_item(arr, k);
  var {1,1} au = decode_authorizations(aul.0, aul.1);
  st tx + 272, au.0;  st tx + 280, au.1;  k = k + 1;
}
```
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

def AuP (Γ : Gam) (v : ValueHOL 64) : Prop :=
  ∀ recs cnt : BitVec 64, v = .rStruct [Wd recs, Wd cnt] →
    cnt.toNat < 2 ^ 28 ∧ Hooks.SubArr Γ recs cnt.toNat Types.tAUTH 120

def AuS (Ar : BitVec 64) (mem : Mem) (v : ValueHOL 64) : Prop :=
  ∀ recs cnt : BitVec 64, v = .rStruct [Wd recs, Wd cnt] → cl Ar mem 34 = recs

def EAu1 (a : Act σ) (Ar A cnt Pt Nt : BitVec 64) (vAl v : ValueHOL 64) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem g => withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false true) Γ q mem g ∧ AuP Γ v

def EAu2 (a : Act σ) (Ar A cnt Pt Nt : BitVec 64) (vAl v : ValueHOL 64) :
    Gam → Ptrs → Mem → LocalsH → Prop :=
  fun Γ q mem g => EAu1 a Ar A cnt Pt Nt vAl v Γ q mem g ∧ AuS Ar mem v

theorem st_ptr_au {a : Act σ} (ha : ActOK a X) {Ar A cnt Pt Nt : BitVec 64} {tt s : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {vAl v : ValueHOL 64} :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s (nm "aul") (nm "au") vAl v) (EAu1 a Ar A cnt Pt Nt vAl v))
      (txrSt 272 (.rfield 0 (lv (nm "au"))))
      (DQ a Ar 400 (Lr2 Ar A tt s (nm "aul") (nm "au") vAl v) (EAu2 a Ar A cnt Pt Nt vAl v)) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s' hs hL w hw
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 272)] at hw
    cases hw
    exact ⟨34, by norm_num, rfl⟩
  · intro s' hs hL v' hv'
    obtain ⟨r, c, -, hl⟩ := lr2_shape hL
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
    cases hv'
    exact ⟨r, rfl⟩
  · intro s' Γ q j x mem hs hL hj hw hx hrd hmod hB ⟨⟨hE, hAl⟩, hAu⟩
    obtain ⟨r, c, hvrc, hl⟩ := lr2_shape hL
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 272)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := 272) (b := 8 * j) (by omega) (by omega) hw
    have hj34 : j = 34 := by omega
    subst hj34
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
    obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := hE
    have h34 := tf_set34 hmod (h35 rfl) hAr hB hT
    refine ⟨⟨⟨et2_upd (a := a) (g := s'.globals) (b27' := false) (b35' := true) 34 (by norm_num) hmod
      h34.1 h34.2 (fun h => absurd h (by simp)) (fun _ => ⟨rfl, by norm_num⟩) hAr hB (Or.inl (by decide))
      ⟨⟨hT, h27, h35⟩, hEA⟩, hAl⟩, hAu⟩, ?_⟩
    intro recs cnt hv
    obtain ⟨h1, h2⟩ := lr2_eq hvrc hv
    show rd mem (Ar + BitVec.ofNat 64 (8 * 34)) = recs
    rw [hrd, ← hx, h1]

theorem st_cnt_au {a : Act σ} (ha : ActOK a X) {Ar A cnt Pt Nt : BitVec 64} {tt s : Nat}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {vAl v : ValueHOL 64} :
    HoareG σ X (DI a Ar 400 (Lr2 Ar A tt s (nm "aul") (nm "au") vAl v) (EAu2 a Ar A cnt Pt Nt vAl v))
      (txrSt 280 (.rfield 1 (lv (nm "au"))))
      (DQ a Ar 400 (Lr2 Ar A tt s (nm "aul") (nm "au") vAl v)
        (withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false false))) := by
  have hse := heapEnd_lt64
  unfold txrSt
  refine hoareG_stDI ha (by omega) ?_ ?_ ?_
  · intro s' hs hL w hw
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 280)] at hw
    cases hw
    exact ⟨35, by norm_num, rfl⟩
  · intro s' hs hL v' hv'
    obtain ⟨r, c, -, hl⟩ := lr2_shape hL
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hv'
    cases hv'
    exact ⟨c, rfl⟩
  · intro s' Γ q j x mem hs hL hj hw hx hrd hmod hB ⟨⟨⟨hE, hAl⟩, hAu⟩, hS⟩
    obtain ⟨r, c, hvrc, hl⟩ := lr2_shape hL
    rw [ev_add2 (ev_lw (bl_tx hL.1.1)) (ev_cw _ 280)] at hw
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    have hjj := ofN_inj Ar (a := 280) (b := 8 * j) (by omega) (by omega) hw
    have hj35 : j = 35 := by omega
    subst hj35
    rw [Spec.Mpt.Dec.ev_rfield_w hl rfl] at hx
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
    obtain ⟨⟨hT, h27, h35⟩, hEA⟩ := hE
    obtain ⟨k1, k2⟩ := hAu r c hvrc
    have hA : Hooks.SubArr Γ (cl Ar s'.memory 34) x.toNat Types.tAUTH 120 := by
      rw [hS r c hvrc, ← hx]; exact k2
    have h35' := tf_set35 hmod hrd (by rw [← hx]; exact k1) hA hAr hB hT
    exact ⟨et2_upd (a := a) (g := s'.globals) (b27' := false) (b35' := false) 35 (by norm_num) hmod
      h35'.1 h35'.2 (fun h => absurd h (by simp)) (fun h => absurd h (by simp)) hAr hB (Or.inl (by decide))
      ⟨⟨hT, h27, h35⟩, hEA⟩, hAl⟩

theorem txr_auth_inner {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat)
    (h10 : txrKst 10 tt = txrKst 9 tt + 1) (vAl : ValueHOL 64) :
    HoareG σ X (DI a Ar 400 (LsN Ar A tt 9 (nm "aul") vAl)
        (withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false true)))
      (.decCall (nm "au") (.comb [.one, .one]) (nm "decode_authorizations")
        [.rfield 0 (lv (nm "aul")), .rfield 1 (lv (nm "aul"))]
        (.seq (txrSt 272 (.rfield 0 (lv (nm "au"))))
          (.seq (txrSt 280 (.rfield 1 (lv (nm "au")))) (txrK 1))))
      (DQ a Ar 400 (LsN Ar A tt 10 (nm "aul") vAl)
        (withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false false))) := by
  refine hoareG_decCallPreQD ha hcs.au (by simp [auSig]) (by simp [auSig]) (fun _ => hgr)
    (L' := fun v => Lr2 Ar A tt 9 (nm "aul") (nm "au") vAl v)
    (E' := fun v => EAu1 a Ar A cnt Pt Nt vAl v)
    (L2 := fun v => Lr2 Ar A tt 10 (nm "aul") (nm "au") vAl v)
    (E2 := fun v => withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false false))
    (Lf := LsN Ar A tt 10 (nm "aul") vAl) (Ef := withP (AlFact a Pt Nt vAl) (ET2 a Ar A cnt Pt Nt false false))
    ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · intro s' hs hL vs hvs
    rw [evs_len2 hvs]; simp [auSig]
  · intro s' st v hL hsh
    obtain ⟨r, c, rfl⟩ := rstruct_of_shape hsh
    refine ⟨⟨bl_set (s := ({ st with locals := s'.locals } : State σ)) (by decide) _ hL.1, ?_⟩,
      lk_set_self _ _ _, r, c, rfl⟩
    rw [lk_set_ne _ _ (by decide : nm "au" ≠ nm "aul")]; exact hL.2
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
    · exact et2_call hcs.hCb false true hAr auSig [Wd b, Wd c] Γ Γ' q q' s' st s'.globals st.globals
        (coa_of_co co _) (fun x hx => argCells_any (by simp [auSig]) hx) hB hE
    · intro recs cnt hv'
      obtain ⟨k1, k2⟩ := hQ' recs cnt hv'
      exact ⟨by omega, k2⟩
  · intro v
    exact hoareG_seqDQ (st_ptr_au ha hAr) (hoareG_seqDQ (st_cnt_au ha hAr) (kinc_r2 ha h10 (by decide) (by decide)))
  · intro m0 m v hL hm
    exact ⟨bl_res (by decide) _ hm.1.1, by rw [lookup_resVarEq_ne _ _ (by decide : nm "au" ≠ nm "aul")]; exact hm.1.2⟩
  · intro v Γ q mem g h
    exact h

/-- stage 9 -> 10 -/
theorem txr_auth {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar A cnt Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) (tt : Nat)
    (htt : tt ≤ 4) (hcnt : cnt.toNat = txrNfOf tt) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt 9) (ET2 a Ar A cnt Pt Nt false true)) txrAuth
      (DQ a Ar 400 (BLs Ar A tt 10) (ET2 a Ar A cnt Pt Nt false false)) := by
  unfold txrAuth
  by_cases h4 : tt = 4
  · subst h4
    refine hoareG_iteT (w0 := 1) (by decide)
      (fun s hs hD => cond_true .equal 4 hD.1 (by rw [(txrCmpT 4 htt).2.1]; decide)) ?_
    have hI : txrKst 9 4 < cnt.toNat := by rw [hcnt]; simp [txrKst, txrNfOf]
    have h10 : txrKst 10 4 = txrKst 9 4 + 1 := by simp [txrKst]
    refine txr_litem ha hcs hAr 4 9 (nm "aul") (by decide) (lv (nm "k")) (txrKst 9 4) hI
      (fun s' hL => ev_lw (bl_k hL)) (L2 := fun v => LsN Ar A 4 10 (nm "aul") v)
      (E2 := fun v => withP (AlFact a Pt Nt v) (ET2 a Ar A cnt Pt Nt false false))
      (Lf := BLs Ar A 4 10) (Ef := ET2 a Ar A cnt Pt Nt false false) ?_ ?_ ?_
    · intro v
      exact txr_auth_inner ha hcs hgr hAr 4 h10 v
    · intro m0 m v _ hm
      exact bl_res (by decide) _ hm.1
    · intro v Γ q mem g h
      exact h.1
  · refine hoareG_iteF
      (fun s hs hD => cond_false .equal 4 hD.1 (by rw [(txrCmpT tt htt).2.1]; simpa using h4)) ?_
    refine hoareG_skip fun s hs hD => ⟨fun _ => ?_, fun r' h => absurd h (by simp)⟩
    exact di_mono (fun m h => by simpa [BLs, txrKst, h4] using h)
      (fun _ _ _ _ ⟨⟨hT, h27, h35⟩, hEA⟩ => ⟨⟨hT, h27, fun h => absurd h (by simp)⟩, hEA⟩) hD

end InitECandidate.Solver.MemSafe.Rec
