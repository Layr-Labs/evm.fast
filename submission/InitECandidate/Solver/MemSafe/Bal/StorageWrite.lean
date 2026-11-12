import InitECandidate.Solver.MemSafe.Bal.StorageWriteCode
import InitECandidate.Solver.MemSafe.Bal.StorageRead

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

theorem lstNew_c2' :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new")
      ⟨[.eq 40, .eq 2], [.fits (.ptr tLSTc)], [], true⟩ [] := lstNew_c2

section sw
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- Before the `if` of `add_storage_write`: the table of the record, the found entry. -/
def SwM (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (SLOT IDX A B C D TB a2 b2 : BitVec 64) (Γ : Gam)
    (u : State σ) : Prop :=
  u.locals.lookup (nm "slot") = some (.val (.word SLOT)) ∧
  u.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  u.locals.lookup (nm "new_value") = some (wv [A, B, C, D]) ∧
  u.locals.lookup (nm "t") = some (.val (.word TB)) ∧
  u.locals.lookup (nm "m") = some (wv [a2, b2]) ∧
  u.locals.lookup (nm "l") = some (.val (.word 0)) ∧
  Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ u ∧
  u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
  SrcKey Γ SLOT 32 tHTl32 ∧ (∃ T1 ∈ Γ, T1.base = TB ∧ T1.ty = tHTl32) ∧
  (a2 ≠ 0 → ∃ L ∈ Γ, L.base = b2 ∧ L.ty = tLSTc)

/-- After the `if`: the list of the slot. -/
def SwC (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (IDX A B C D : BitVec 64) (u : State σ) : Prop :=
  u.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  u.locals.lookup (nm "new_value") = some (wv [A, B, C, D]) ∧
  ∃ Γ LB, u.locals.lookup (nm "l") = some (.val (.word LB)) ∧
    Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ u ∧
    u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    ∃ L ∈ Γ, L.base = LB ∧ L.ty = tLSTc

/-- After `lst_new`. -/
def SwN (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (SLOT IDX A B C D TB LB : BitVec 64) (Γ : Gam)
    (u : State σ) : Prop :=
  u.locals.lookup (nm "slot") = some (.val (.word SLOT)) ∧
  u.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  u.locals.lookup (nm "new_value") = some (wv [A, B, C, D]) ∧
  u.locals.lookup (nm "t") = some (.val (.word TB)) ∧
  u.locals.lookup (nm "l") = some (.val (.word LB)) ∧
  Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ u ∧
  u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
  SrcKey Γ SLOT 32 tHTl32 ∧ (∃ T1 ∈ Γ, T1.base = TB ∧ T1.ty = tHTl32) ∧
  ∃ L ∈ Γ, L.base = LB ∧ L.ty = tLSTc

theorem swC_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {IDX A B C D : BitVec 64}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : r = none ∧ SwC s0 Γ0 p0 IDX A B C D t) : r = none ∧ SwC s0 Γ0 p0 IDX A B C D t := h

theorem sw_new (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0)
    {SLOT IDX A B C D TB a2 b2 : BitVec 64} :
    Hoare σ guestCtx (fun u => ∃ Γ, SwM s0 Γ0 p0 SLOT IDX A B C D TB a2 b2 Γ u) swNew
      (fun r t => r = none ∧ SwC s0 Γ0 p0 IDX A B C D t) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have gwOf : ∀ f, (balFns.map Prod.fst).contains f = true → FunSpec σ guestCtx f
      (fun _ s _ t => t.globals.lookup (nm "bal_accounts") = s.globals.lookup (nm "bal_accounts")) :=
    fun f hf => funSpec_bal_gw hF.hX (by simp) hf
  unfold swNew
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ LB, SwN s0 Γ0 p0 SLOT IDX A B C D TB LB Γ t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callA (FunSpec.and (sa_of_csumm (lstNew_c2' (σ := σ))) (FunSpec.and (Frames.funSpec_dom _)
      (gwOf (nm "lst_new") (by decide_cbv)))) ?_
    intro s _ ⟨Γ, hs⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ _ hvalid
    obtain ⟨hsl, hix, hnv, ht, hm, hl0, hT, hb, hkey, ⟨T1, hT1, hT1b, hT1t⟩, hfound⟩ := hs
    obtain ⟨w, rfl⟩ := valid_word hl0 hvalid
    rw [evs_cons (ev_cw _ 40) (evs_cons (ev_cw _ 2) evs_nil)] at hvs
    cases hvs
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := id hT
    obtain ⟨Γ1, p, p', hc, -, hT2⟩ := call_cs hH hT hord0 hL0'
      (sg := ⟨[.eq 40, .eq 2], [.fits (.ptr tLSTc)], [], true⟩)
      (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ) (PW' := fun _ s Γ y => CapPW ([] : List Cap) s Γ y)
      (Q := fun _ _ _ _ _ _ => True)
      (vs := [.val (.word (BitVec.ofNat 64 40)), .val (.word (BitVec.ofNat 64 2))])
      (r := .returned (.val (.word w))) (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
      ⟨pT, hpT, argsOK_eq2⟩ (fun c hc => by cases hc) (fun g _ => by simp)
      (fun y hy => absurd hy argCells_eq2) (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc) hd hbe
    have hext := hc.2.2.2.1
    have hret := hc.2.2.2.2.2.2.2.2.2
    have hfit : Fits Γ1 (.ptr tLSTc) w := hret (.val (.word w)) rfl 0 (.fits (.ptr tLSTc)) w (by simp)
      (by simp [flattenHOL])
    obtain ⟨L1, hL1, hL1b, hL1t⟩ := hfit
    have hK : ∀ y, nm "l" ≠ y → (setKvarHOLFinite VarKind.local (nm "l") (ValueHOL.val (HolWordLab.word w))
        { st with locals := s.locals }).locals.lookup y = s.locals.lookup y := fun y hy => lk_set_ne _ _ hy
    refine ⟨rfl, Γ1, w, ?_, ?_, ?_, ?_, lk_set_self _ _ _, Struct.trk_congr hH hT2 rfl rfl rfl rfl, ?_,
      srcKey_ext hext hkey, ?_, L1, hL1, hL1b, hL1t⟩
    · rw [hK _ (by decide)]; exact hsl
    · rw [hK _ (by decide)]; exact hix
    · rw [hK _ (by decide)]; exact hnv
    · rw [hK _ (by decide)]; exact ht
    · show st.globals.lookup (nm "bal_accounts") = _
      rw [hgw]; exact hb
    · obtain ⟨o', ho', hb', ht', -⟩ := hext T1 hT1
      exact ⟨o', ho', hb'.trans hT1b, ht'.trans hT1t⟩
  · refine hoare_callD (FunSpec.and (sumSpec_htab_set_k hF guestHooksR_mono htabHooks_guestR (th := tHTl32)
        (by decide)) (FunSpec.and (Frames.funSpec_dom _)
        (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "htab_set") (by decide_cbv)))) ?_
    rintro s hs ⟨hr0, Γ, LB, hsl, hix, hnv, ht, hl, hT, hb, hkey, ⟨T1, hT1, hT1b, hT1t⟩, ⟨L1, hL1, hL1b, hL1t⟩⟩ vs hvs
      callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [Mpt.Leaves.ev_lv' ht] at ha1
    rw [Mpt.Leaves.ev_lv' hsl] at ha2
    rw [Mpt.Leaves.ev_lv' hl] at ha3
    cases ha1; cases ha2; cases ha3
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := id hT
    obtain ⟨qT, hqT, hordT, hLayT, hFlT, -, -, hW⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    have hko : hkOf T1.ty = .tab := by rw [hT1t]; exact hkOf_of_tab (by decide)
    have hw : tabW Γ s T1 := htabHooks_guestR.get _ s T1 hko (hW T1 hT1)
    have hko' : KeyOut s T1.base SLOT 32 pT.hp := keyOut_of_srcKey hordT hLayT hw hko hT1t hkey
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some pT := (Frames.ptrsOf_congr rfl).trans hpT
    have hpre : SetPreK tHTl32 [.val (.word TB), .val (.word SLOT), .val (.word LB)]
        (callEntryStateHOLFinite s callee) Γ :=
      ⟨_, SLOT, LB, rfl, pT, hpe, by rw [← hT1b]; exact hko'⟩
    have hargs : ArgsOK guestC Γ pT (setSigK tHTl32).params [.val (.word TB), .val (.word SLOT),
        .val (.word LB)] :=
      argsOK3 ⟨_, rfl, T1, hT1, hT1b, hT1t⟩ trivial (by
        have : valPT tHTl32 = .fits (.ptr tLSTc) := by decide
        rw [this]; exact ⟨_, rfl, L1, hL1, hL1b, hL1t⟩)
    obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0' (sg := setSigK tHTl32)
      (Pre := SetPreK tHTl32) (PW' := fun _ s Γ y => CapPW (capsHT tHTl32) s Γ y)
      (Q := fun _ _ _ _ _ _ => True)
      (vs := [.val (.word TB), .val (.word SLOT), .val (.word LB)])
      (r := .returned v) (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
      ⟨pT, hpT, hargs⟩ hpre (fun g _ => by simp [setSigK])
      (fun y hy => by
        exfalso
        obtain ⟨i, w, -, h⟩ := hy
        rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y', hj, -⟩
        · match i, hn with
          | 0, hn => simp [setSigK] at hn
          | 1, hn => simp [setSigK] at hn
          | 2, hn => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
              Option.some.injEq] at hn; exact valPT_ne_buf tHTl32 n hn
          | _ + 3, hn => simp [setSigK] at hn
        · match i, hj with
          | 0, hj => simp [setSigK] at hj
          | 1, hj => simp [setSigK] at hj
          | 2, hj => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
              Option.some.injEq] at hj; exact valPT_ne_bufArg tHTl32 j c d hj
          | _ + 3, hj => simp [setSigK] at hj)
      (fun y hpc hpw => pw_of_caps hord0 hordT hmT hL0' hLayT hnfT (th := tHTl32) (Or.inr (Or.inl rfl))
        hpc hpw)
      hd hbe
    have hext := hc.2.2.2.1
    obtain ⟨o', ho', hb', ht', -⟩ := hext L1 hL1
    refine ⟨rfl, hix, hnv, Γ1, LB, hl, Struct.trk_congr hH hT2 rfl rfl rfl rfl, hgw.trans hb, o', ho',
      hb'.trans hL1b, ht'.trans hL1t⟩


theorem sw_ite (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0)
    {SLOT IDX A B C D TB a2 b2 : BitVec 64} :
    Hoare σ guestCtx (fun u => ∃ Γ, SwM s0 Γ0 p0 SLOT IDX A B C D TB a2 b2 Γ u) swIte
      (fun r t => r = none ∧ SwC s0 Γ0 p0 IDX A B C D t) := by
  unfold swIte
  refine hoare_ite (hoare_pre (sw_new hord0 hL0') fun t _ h => h.1) ?_
  refine hoare_assign fun t _ ⟨⟨Γ, hsl, hix, hnv, ht, hm, hl0, hT, hb, hkey, hT1, hfound⟩, hfalse⟩ w hw hvalid => ?_
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hfalse
  rw [ev_rfield_wv (ws := [a2, b2]) (by rw [ev_lv]; exact hm) (i := 0) (by simp)] at hx
  cases hx
  rw [ev_cw] at hy
  cases hy
  have ha2 : a2 ≠ 0 := fun h0 => by
    subst h0
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
  rw [ev_rfield_wv (ws := [a2, b2]) (by rw [ev_lv]; exact hm) (i := 1) (by simp)] at hw
  cases hw
  obtain ⟨L, hL, hLb, hLt⟩ := hfound ha2
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine ⟨rfl, ?_, ?_, Γ, b2, lk_set_self _ _ _, Struct.trk_congr hH hT rfl rfl rfl rfl, hb, L, hL, hLb, hLt⟩
  · rw [lk_set_ne _ _ (by decide)]; exact hix
  · rw [lk_set_ne _ _ (by decide)]; exact hnv


theorem sw_up (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0) {IDX A B C D : BitVec 64} :
    Hoare σ guestCtx (SwC s0 Γ0 p0 IDX A B C D) swUp (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  unfold swUp
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sumRel_fun (sumSpec_lst_upsert_idx (σ := σ) (X := guestCtx)
    (H := guestHooksR) hF guestHooksR_mono lstHooks_guestR)) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "lst_upsert_idx") (by decide_cbv))))
    (bcQ_locals hH) fun s _ hs vs hvs callee v st ⟨hRel, ⟨hd, hbe⟩, hgw⟩ _ hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shape1 hsh
  obtain ⟨hix, hnv, Γ, LB, hl, hT, hb, L, hL, hLb, hLt⟩ := hs
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  rw [Mpt.Leaves.ev_lv' hl] at ha1
  rw [ev_cw] at ha2
  rw [Mpt.Leaves.ev_lv' hix] at ha3
  cases ha1; cases ha2; cases ha3
  have hE : lstE L.ty = 40 := by rw [hLt]; decide
  have hLl : L.ty ∈ lstTys := by rw [hLt]; decide
  have hT0 := hT
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT0
  obtain ⟨qT, hqT, hordT, hLayT, hFlT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  obtain ⟨Γ1, pp, pp', hc, hq, hT2⟩ := call_cs hH hT hord0 hL0' (sg := luSig) (Pre := LuPre)
    (PW' := fun _ _ Γ a => Inc.LaPW Γ a) (Q := LuPost)
    (vs := [.val (.word LB), .val (.word (BitVec.ofNat 64 40)), .val (.word IDX)])
    (r := .returned (.val (.word w))) (callee := callee) (st := st) hRel
    (by simp [Good]) (by simp [Abortive]) ⟨pT, hpT, argsOK_any3⟩
    ⟨L, hL, hLl, IDX, by rw [hLb, hE]⟩ (fun g _ => by simp [luSig])
    (fun y hy => absurd hy argCells_any3)
    (fun a hpc hpw => pw_of_la hord0 hL0' hT hpc hpw) hd hbe
  obtain ⟨L', hL', hL't, hL'b, w', hw', x, hx, hxt, k, hk, hwx, hxe⟩ := hq _ rfl
  cases hw'
  have hLL : L = L' := by
    simp only [List.getElem?_cons_zero, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hL'b
    exact base_eq (gamOK_of_layout hLayT) hL' hL (hLb.trans hL'b)
  subst hLL
  rw [hE] at hxe
  have hT3 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ1
      (setVarHOLFinite (nm "e") (.val (.word w)) { st with locals := s.locals }) :=
    Struct.trk_congr hH hT2 rfl rfl rfl rfl
  refine hoare_seq (R := fun r t => r = none ∧ t.globals.lookup (nm "bal_accounts") =
      s0.globals.lookup (nm "bal_accounts") ∧
      ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (ret_bcQ hH) fun t _ h => h.2)
  refine hoare_pre (P := fun t => t = setVarHOLFinite (nm "e") (.val (.word w)) { st with locals := s.locals }) ?_
    (fun t _ ht => ht)
  refine hoare_store fun t _ ht w1 v mem hw hv hmem => ?_
  subst ht
  rw [ev_add2 (Mpt.Leaves.ev_lv' (lk_set_self _ _ _)) (ev_cw _ 8)] at hw
  cases hw
  rw [ev_lv, lk_set_ne _ _ (by decide)] at hv
  have hv2 : s.locals.lookup (nm "new_value") = some v := hv
  rw [hnv] at hv2
  cases hv2
  have hcell : w + BitVec.ofNat 64 8 = x.cell (k + 1) := by
    rw [hwx]; simpa using cell_add x k 1
  rw [hcell] at hmem
  have hfl : flattenHOL (wv [A, B, C, D]) = [HolWordLab.word A, .word B, .word C, .word D] := by
    simp [wv, flattenHOL]
  rw [hfl] at hmem
  have hT' := trk_wordsA hH lstHooks_guestR hT3 hx hxt (k := k + 1) (n := 4) (by omega) rfl hmem
    (fun j hj => pw_of_la hord0 hL0' hT3 ⟨x, hx, k + 1 + j, by unfold Obj.HasSlot; omega,
      lstA_prot hxt _, rfl⟩ (Or.inr ⟨x, hx, hxt, k + 1 + j, by unfold Obj.HasSlot; omega, rfl⟩))
  refine ⟨rfl, ?_, Γ1, hT'⟩
  show st.globals.lookup (nm "bal_accounts") = _
  rw [hgw]
  show s.globals.lookup (nm "bal_accounts") = _
  exact hb


theorem sw_rest (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {ADDR AD SLOT IDX A B C D : BitVec 64} :
    Hoare σ guestCtx (AdS s0 Γ0 p0 ADDR AD [(nm "slot", .val (.word SLOT)), (nm "idx", .val (.word IDX)),
      (nm "new_value", wv [A, B, C, D])] (fun Γ => SrcKey Γ SLOT 32 tHTl32)) swRest (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0', -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  unfold swRest
  refine Mpt.Leaves.hoare_decL (bcQ_locals hH) fun u _ hu v hv _ => ?_
  obtain ⟨hla, hXl, hlad, Γ1, hT1, hb, hkey0, hkey, o, ho, hob, hot⟩ := hu
  have hsl : u.locals.lookup (nm "slot") = some (.val (.word SLOT)) := hXl _ (List.mem_cons_self ..)
  have hix : u.locals.lookup (nm "idx") = some (.val (.word IDX)) :=
    hXl _ (List.mem_cons_of_mem _ (List.mem_cons_self ..))
  have hnv : u.locals.lookup (nm "new_value") = some (wv [A, B, C, D]) :=
    hXl _ (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (List.mem_cons_self ..)))
  have hv' := lp_ev_ld (ev_add2 (lp_ev_lv hlad) (ev_cw _ 0)) hv
  have hT1' := hT1
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT1'
  have hGT' := hGT
  obtain ⟨qT, hqT, hordT, hLayT, hFlT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  have hsz : 8 * 0 + 8 ≤ o.size := by
    have := (hLayT.1 o ho).2.2.2.1
    rw [hot] at this
    have h40 : (guestC.ty tAD).minSz = 40 := by decide
    omega
  have hfit := hFlT o ho 0 hsz
  rw [hot, show (guestC.ty tAD) = adTy from rfl] at hfit
  have hs0 : adTy.slot 0 = .ptr tHTl32 := by decide
  rw [hs0] at hfit
  obtain ⟨T1, hT1m, hT1b, hT1t⟩ := hfit
  have hcell : o.cell 0 = AD + BitVec.ofNat 64 0 := by unfold Obj.cell; rw [hob]
  rw [hcell] at hT1b
  rw [← hT1b] at hv'
  subst hv'
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (funSpec_get_j (σ := σ) hF.hX)
    (funSpec_get_fits (σ := σ) (th := tHTl32) (by decide))) (bcQ_locals hH)
    fun s _ hs vs hvs callee v st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hFit⟩ _ hsh => ?_
  subst hs
  have hl1 : (setVarHOLFinite (nm "t") (.val (.word T1.base)) u).locals.lookup (nm "t")
      = some (.val (.word T1.base)) := lk_set_self _ _ _
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [Mpt.Leaves.ev_lv' hl1] at ha1
  rw [Mpt.Leaves.ev_lv' ((lk_set_ne _ _ (by decide)).trans hsl)] at ha2
  cases ha1; cases ha2
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
    have := (shapeEqHOL_eq_true _ _).mp hsh
    exact (shapeEqHOL_eq_true _ _).mpr this)
  match ws, hws with
  | [a2, b2], _ =>
  have hgs : st.globals = u.globals := AllocImpl.hfm_ext (funext hgl)
  have hGe : G guestC (guestHooksR (σ := σ)) Γ1 (callEntryStateHOLFinite
      (setVarHOLFinite (nm "t") (.val (.word T1.base)) u) callee) :=
    Struct.G_congr (s := u) hH rfl rfl rfl rfl (Struct.trk_G hT1)
  set u2 := setVarHOLFinite (nm "m") (wv [a2, b2])
    { st with locals := (setVarHOLFinite (nm "t") (.val (.word T1.base)) u).locals } with hu2
  have hT2 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ1 u2 :=
    Struct.trk_congr hH hT1 hm hgs hd hbe
  refine Mpt.Leaves.hoare_decL (bcQ_locals hH) fun u3 _ hu3 v3 hv3 _ => ?_
  rw [ev_cw] at hv3
  cases hv3
  subst hu3
  refine hoare_seq (R := fun r t => r = none ∧ SwC s0 Γ0 p0 IDX A B C D t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (sw_ite hord0 hL0' (SLOT := SLOT) (IDX := IDX) (A := A) (B := B) (C := C) (D := D)
      (TB := T1.base) (a2 := a2) (b2 := b2)) fun t _ ht => ?_
    subst ht
    refine ⟨Γ1, ?_, ?_, ?_, ?_, ?_, lk_set_self _ _ _, Struct.trk_congr hH hT2 rfl rfl rfl rfl, ?_, ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide), hu2, lk_set_ne _ _ (by decide)]
      show (setVarHOLFinite (nm "t") _ u).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact hsl
    · rw [lk_set_ne _ _ (by decide), hu2, lk_set_ne _ _ (by decide)]
      show (setVarHOLFinite (nm "t") _ u).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact hix
    · rw [lk_set_ne _ _ (by decide), hu2, lk_set_ne _ _ (by decide)]
      show (setVarHOLFinite (nm "t") _ u).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact hnv
    · rw [lk_set_ne _ _ (by decide), hu2, lk_set_ne _ _ (by decide)]
      show (setVarHOLFinite (nm "t") _ u).locals.lookup _ = _
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide), hu2]
      exact lk_set_self _ _ _
    · show st.globals.lookup (nm "bal_accounts") = _
      rw [hgs]; exact hb
    · exact hkey
    · exact ⟨T1, hT1m, rfl, hT1t⟩
    · intro ha0
      have hfit := hFit Γ1 hGe T1.base SLOT rfl ⟨T1, hT1m, rfl, hT1t⟩ _ rfl a2 b2 rfl ha0
      have hvk : valK tHTl32 = .ptr tLSTc := by decide
      rw [hvk] at hfit
      exact hfit
  · refine hoare_pre (sw_up hord0 hL0' (IDX := IDX) (A := A) (B := B) (C := C) (D := D)) fun t _ h => h.2


def SwPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR SLOT IDX A B C D : BitVec 64,
    vs = [.val (.word ADDR), .val (.word SLOT), .val (.word IDX), wv [A, B, C, D]] ∧
    BalNN s Γ ∧ SrcKey Γ ADDR 20 tHTd20 ∧ SrcKey Γ SLOT 32 tHTl32

def swSig : Sig := ⟨[.any, .any, .any, .any], [], [], true⟩

/-- **`add_storage_write(addr, slot, idx, new_value)`**. -/
theorem sumSpec_add_storage_write :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "add_storage_write") swSig SwPre
      (fun _ s Γ a => BalPW s Γ a) BalPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_add_storage_write hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A', B', C', D', rfl, sa, sb, sc, sd, hA, hB, hC, hD⟩ :=
    Bn.lookupCode_four code_add_storage_write (by decide) hl'
  obtain ⟨ADDR, SLOT, IDX, A, B, C, D, hvs, ⟨T0, hT0, hT0t, hbal⟩, hkey, hkey2⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have hbal0 : gword s0 (nm "bal_accounts") = some T0.base := hbal
  have hBS : BS s0 Γ0 p0 ADDR [(nm "slot", .val (.word SLOT)), (nm "idx", .val (.word IDX)),
      (nm "new_value", wv [A, B, C, D])] (fun Γ => SrcKey Γ SLOT 32 tHTl32) s0 := by
    refine ⟨by rw [hloc]; exact hA, ?_, Γ0, Struct.trk_refl hG0 hp0, rfl, hkey, hkey2⟩
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl
    · rw [hloc]; exact hB
    · rw [hloc]; exact hC
    · rw [hloc]; exact hD
  have H' : Hoare σ guestCtx (fun u => u = s0) swBody (BcQ Γ0 s0 p0) := by
    unfold swBody
    refine hoare_pre (bal_prefix0 hG0 hp0 hT0 hT0t hbal0
      (Xs := [(nm "slot", .val (.word SLOT)), (nm "idx", .val (.word IDX)),
        (nm "new_value", wv [A, B, C, D])])
      (by
        intro p hp
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
        rcases hp with rfl | rfl | rfl
        · exact ⟨(by decide : nm "slot" ≠ nm "ad"), (by decide : nm "slot" ≠ nm "e")⟩
        · exact ⟨(by decide : nm "idx" ≠ nm "ad"), (by decide : nm "idx" ≠ nm "e")⟩
        · exact ⟨(by decide : nm "new_value" ≠ nm "ad"), (by decide : nm "new_value" ≠ nm "e")⟩)
      (KP := fun Γ => SrcKey Γ SLOT 32 tHTl32) (fun _ _ h hk => srcKey_ext h hk) (bcQ_locals hH)
      (fun AD => sw_rest hG0 hp0)) (fun u _ hu => by rw [hu]; exact hBS)
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨hbl, Γ', hT⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := sumCore_of_bc (sg := swSig) rfl rfl hp0 hT (vs := [.val (.word ADDR), .val (.word SLOT),
    .val (.word IDX), wv [A, B, C, D]]) (r := r)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact hbl

end sw

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_add_storage_write
