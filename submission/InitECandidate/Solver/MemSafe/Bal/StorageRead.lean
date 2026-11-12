import InitECandidate.Solver.MemSafe.Bal.CodeChange

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def srBody : ProgHOL 64 :=
  .decCall (nm "ad") .one (nm "bal_ensure_account") [lv (nm "addr")]
    (.seq (callD (nm "htab_set") [adLd 8, lv (nm "slot"), cw 1]) (.return (cw 0)))

theorem entry_add_storage_read : fnEntry Guest.Software.guestFn_add_storage_read =
    (nm "add_storage_read", [(nm "addr", .one), (nm "slot", .one)], srBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_add_storage_read : guestCode (nm "add_storage_read") =
    some ([(nm "addr", .one), (nm "slot", .one)], srBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 415) (by decide)) ⟨_, rfl⟩
    entry_add_storage_read

theorem xchk_add_storage_read :
    xChk balX4 false (declPair Guest.Software.guestFn_add_storage_read).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_add_storage_read (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "add_storage_read") :=
  noExc_of_pair (noExc_balX4 hX) hX (p := declPair Guest.Software.guestFn_add_storage_read)
    (declPair_valid (List.getElem_mem (n := 415) (by decide)) ⟨_, rfl⟩) xchk_add_storage_read

section sr
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem sr_cont (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0) {ADDR SLOT AD : BitVec 64} :
    Hoare σ guestCtx (AdS s0 Γ0 p0 ADDR AD [(nm "slot", .val (.word SLOT))]
      (fun Γ => SrcKey Γ SLOT 32 tHTh32))
      (.seq (callD (nm "htab_set") [adLd 8, lv (nm "slot"), cw 1]) (.return (cw 0))) (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  refine hoare_seq (R := fun r t => r = none ∧ t.globals.lookup (nm "bal_accounts") =
      s0.globals.lookup (nm "bal_accounts") ∧
      ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (ret_bcQ hH) fun t _ h => h.2)
  refine hoare_callD (FunSpec.and (sumSpec_htab_set_k hF guestHooksR_mono htabHooks_guestR (th := tHTh32)
        (by decide)) (FunSpec.and (Frames.funSpec_dom _)
        (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "htab_set") (by decide_cbv)))) ?_
  rintro s hs ⟨hla, hXl, hlad, Γ, hT, hb, hkey, hkp, o, ho, hob, hot⟩ vs hvs callee v st
    ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
  have hsl : s.locals.lookup (nm "slot") = some (.val (.word SLOT)) := hXl _ (List.mem_singleton_self _)
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  have ha1' := lp_ev_ld (ev_add2 (Mpt.Leaves.ev_lv' hlad) (ev_cw _ 8)) ha1
  subst ha1'
  rw [Mpt.Leaves.ev_lv' hsl] at ha2
  cases ha2
  rw [ev_cw] at ha3
  cases ha3
  have hT0 := hT
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT0
  obtain ⟨qT, hqT, hordT, hLayT, hFlT, -, -, hW⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  have hsz : 8 * 1 + 8 ≤ o.size := by
    have := (hLayT.1 o ho).2.2.2.1
    rw [hot] at this
    have h40 : (guestC.ty tAD).minSz = 40 := by decide
    omega
  have hfit := hFlT o ho 1 hsz
  rw [hot, show (guestC.ty tAD) = adTy from rfl] at hfit
  obtain ⟨T1, hT1, hT1b, hT1t⟩ : ∃ T1 ∈ Γ, T1.base = rd s.memory (o.cell 1) ∧ T1.ty = tHTh32 := by
    have : adTy.slot 1 = .ptr tHTh32 := by decide
    rw [this] at hfit
    exact hfit
  have hcell : o.cell 1 = AD + BitVec.ofNat 64 8 := by unfold Obj.cell; rw [hob]
  rw [hcell] at hT1b
  have hko : hkOf T1.ty = .tab := by rw [hT1t]; exact hkOf_of_tab (by decide)
  have hw : tabW Γ s T1 := htabHooks_guestR.get _ s T1 hko (hW T1 hT1)
  have hko' : KeyOut s T1.base SLOT 32 pT.hp := keyOut_of_srcKey hordT hLayT hw hko hT1t hkp
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some pT := (Frames.ptrsOf_congr rfl).trans hpT
  have hpre : SetPreK tHTh32 [.val (.word (rd s.memory (AD + BitVec.ofNat 64 8))), .val (.word SLOT),
      .val (.word 1)] (callEntryStateHOLFinite s callee) Γ :=
    ⟨_, SLOT, 1, rfl, pT, hpe, by rw [← hT1b]; exact hko'⟩
  have hargs : ArgsOK guestC Γ pT (setSigK tHTh32).params [.val (.word (rd s.memory (AD + BitVec.ofNat 64 8))),
      .val (.word SLOT), .val (.word 1)] :=
    argsOK3 ⟨_, rfl, T1, hT1, hT1b, hT1t⟩ trivial (by
      have : valPT tHTh32 = .any := by decide
      rw [this]; trivial)
  obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0 (sg := setSigK tHTh32)
    (Pre := SetPreK tHTh32) (PW' := fun _ s Γ y => CapPW (capsHT tHTh32) s Γ y)
    (Q := fun _ _ _ _ _ _ => True)
    (vs := [.val (.word (rd s.memory (AD + BitVec.ofNat 64 8))), .val (.word SLOT), .val (.word 1)])
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
            Option.some.injEq] at hn; exact valPT_ne_buf tHTh32 n hn
        | _ + 3, hn => simp [setSigK] at hn
      · match i, hj with
        | 0, hj => simp [setSigK] at hj
        | 1, hj => simp [setSigK] at hj
        | 2, hj => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
            Option.some.injEq] at hj; exact valPT_ne_bufArg tHTh32 j c d hj
        | _ + 3, hj => simp [setSigK] at hj)
    (fun y hpc hpw => pw_of_caps hord0 hordT hmT hL0 hLayT hnfT (th := tHTh32) (Or.inr (Or.inr rfl)) hpc hpw)
    hd hbe
  exact ⟨rfl, hgw.trans hb, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩

end sr

def SrPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR SLOT : BitVec 64, vs = [.val (.word ADDR), .val (.word SLOT)] ∧ BalNN s Γ ∧
    SrcKey Γ ADDR 20 tHTd20 ∧ SrcKey Γ SLOT 32 tHTh32

def srSig : Sig := ⟨[.any, .any], [], [], true⟩

/-- **`add_storage_read(addr, slot)`**. -/
theorem sumSpec_add_storage_read :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "add_storage_read") srSig SrPre
      (fun _ s Γ a => BalPW s Γ a) BalPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_add_storage_read hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two code_add_storage_read (by decide) hl'
  obtain ⟨ADDR, SLOT, hvs, ⟨T0, hT0, hT0t, hbal⟩, hkey, hkey2⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have hbal0 : gword s0 (nm "bal_accounts") = some T0.base := hbal
  have hBS : BS s0 Γ0 p0 ADDR [(nm "slot", .val (.word SLOT))] (fun Γ => SrcKey Γ SLOT 32 tHTh32) s0 := by
    refine ⟨by rw [hloc]; exact hA, ?_, Γ0, Struct.trk_refl hG0 hp0, rfl, hkey, hkey2⟩
    intro p hp
    simp only [List.mem_singleton] at hp
    subst hp
    rw [hloc]; exact hB
  have H' : Hoare σ guestCtx (fun u => u = s0) srBody (BcQ Γ0 s0 p0) := by
    unfold srBody
    refine hoare_pre (bal_prefix0 hG0 hp0 hT0 hT0t hbal0 (Xs := [(nm "slot", .val (.word SLOT))])
      (by intro p hp; simp only [List.mem_singleton] at hp; subst hp
          exact ⟨(by decide : nm "slot" ≠ nm "ad"), (by decide : nm "slot" ≠ nm "e")⟩)
      (KP := fun Γ => SrcKey Γ SLOT 32 tHTh32) (fun _ _ h hk => srcKey_ext h hk)
      (bcQ_locals hH) (fun AD => sr_cont hG0 hp0)) (fun u _ hu => by rw [hu]; exact hBS)
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨hbl, Γ', hT⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := sumCore_of_bc (sg := srSig) rfl rfl hp0 hT
    (vs := [.val (.word ADDR), .val (.word SLOT)]) (r := r)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact hbl


end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_add_storage_read
