import InitECandidate.Solver.MemSafe.Bal.IdxAcct
import InitECandidate.Solver.MemSafe.Stor.Gso

set_option maxRecDepth 100000
set_option cbv.warning false
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

def gsTail : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "v"))) (cw 0))
      (.return (.load (.comb [.one, .one, .one, .one]) (.rfield 1 (lv (nm "v"))))) .skip)
    (.seq (callD (nm "record_pre_state_read") [lv (nm "addr")])
      (.decCall (nm "r") (.comb [.one, .one, .one, .one]) (nm "ws_get_storage") [lv (nm "addr"), lv (nm "key")]
        (.return (lv (nm "r")))))

def gsBody : ProgHOL 64 :=
  .decCall (nm "v") (.comb [.one, .one]) (nm "stor_lookup") [bsLd 32, lv (nm "addr"), lv (nm "key")] gsTail

theorem entry_get_pre_tx_storage : fnEntry Guest.Software.guestFn_get_pre_tx_storage =
    (nm "get_pre_tx_storage", [(nm "addr", .one), (nm "key", .one)], gsBody, .comb [.one, .one, .one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_get_pre_tx_storage : guestCode (nm "get_pre_tx_storage") =
    some ([(nm "addr", .one), (nm "key", .one)], gsBody, .comb [.one, .one, .one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 421) (by decide)) ⟨_, rfl⟩
    entry_get_pre_tx_storage

def slSg : Sig := ⟨[.any, .any, .any], [], [], false⟩
theorem sl_mem : (nm "stor_lookup", slSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem sl_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "stor_lookup") slSg [] :=
  tabJL_guestR _ _ _ sl_mem


section gs
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {ADDR KEY : BitVec 64}

def gsc : List Cap := capsHT tHTb20 ++ storWstCaps

theorem gsc_sub1 : ∀ c ∈ capsHT tHTb20, c.ks = [] ∧ ∃ c0 ∈ gsc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  refine ⟨(capsHT_self c hc).1, c, ?_, ?_, fun _ h => h⟩
  · unfold gsc; exact List.mem_append_left _ hc
  · simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl <;> rfl

theorem gsc_sub2 : ∀ c ∈ storWstCaps, c.ks = [] ∧ ∃ c0 ∈ gsc, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t := by
  intro c hc
  refine ⟨?_, c, ?_, ?_, fun _ h => h⟩
  · simp only [storWstCaps, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl <;> rfl
  · unfold gsc; exact List.mem_append_right _ hc
  · simp only [storWstCaps, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl <;> rfl

structure GsEnt (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (ADDR : BitVec 64) : Prop where
  hord : p0.Ordered
  hL : Layout guestC p0 Γ0
  B0 : BsNN s0 Γ0
  key : SrcKey Γ0 ADDR 20 tHTb20

theorem gs_facts (E : GsEnt Γ0 s0 p0 ADDR) {Γ : Gam} {t : State σ} (h : IV gsc Γ0 s0 p0 Γ t) :
    BsNN t Γ ∧ SrcKey Γ ADDR 20 tHTb20 := by
  have hext := Struct.trk_ext h.1
  have g4 : ∀ g ∈ bal4, t.globals.lookup g = s0.globals.lookup g := h.2
  obtain ⟨B0, hB0, hB0t, hB0g⟩ := E.B0
  obtain ⟨B, hB, hBb, hBt, -⟩ := hext B0 hB0
  refine ⟨⟨B, hB, hBt.trans hB0t, ?_⟩, srcKey_ext hext E.key⟩
  have e := g4 (nm "bs") (by simp [bal4])
  unfold gword at hB0g ⊢
  rw [e, hB0g, hBb]

def LK (ADDR KEY : BitVec 64) (Γ : Gam) (t : State σ) : Prop :=
  t.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧ t.locals.lookup (nm "key") = some (.val (.word KEY))

theorem gs_tail (E : GsEnt Γ0 s0 p0 ADDR)
    (hws : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig storWstCaps) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI gsc Γ0 s0 p0 (LK ADDR KEY) Γ s) gsTail (GQ4 gsc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold gsTail
  refine hseq (L := LK ADDR KEY) (hoareG_ite (Q := RR gsc Γ0 s0 p0 (LK ADDR KEY)) ?_ ?_) ?_
  · refine hoareG_return fun t _ ⟨⟨Γ, hP⟩, _⟩ v' hv' => Or.inr ⟨by simp, gq4_of_iv _ ⟨Struct.trk_congr hH hP.1.1 rfl rfl rfl rfl, hP.1.2⟩⟩
  · exact hoareG_skip fun t _ ⟨hP, _⟩ => Or.inl ⟨rfl, hP⟩
  refine hseq (L := LK ADDR KEY) ?_ ?_
  · refine gstepD hH (sumSpec_record_pre_state_read_k (σ := σ)) (by decide_cbv) (fun g _ => by simp [rprSig])
      E.hord E.hL ?_ ?_
    · intro Γ s ⟨hIV, hla, hkey⟩ vs hvs callee
      obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
      rw [evs_nil] at hr1
      cases hr1
      rw [Mpt.Leaves.ev_lv' hla] at ha1
      cases ha1
      have F := gs_facts E hIV
      obtain ⟨pT, hpT, -⟩ := id hIV.1
      exact ⟨⟨pT, hpT, argsOK_any1⟩, ⟨ADDR, rfl, F.1, F.2⟩, fun a h => absurd h argCells_any1,
        cpw_step gsc_sub1 hIV.1 E.hord E.hL⟩
    · intro Γ s vs callee v Γ1 st hP hvs hT2 hinfo hq
      exact hP.2
  · refine gstepDec hH (sa_of_cs hws) (by decide_cbv) (fun g _ => by simp [storWgsSig]) E.hord E.hL ?_ ?_
      (L := LK ADDR KEY) (Ln := LK ADDR KEY) ?_
    · intro Γ s ⟨hIV, hla, hkey⟩ vs hvs callee
      obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      obtain ⟨pT, hpT, -⟩ := id hIV.1
      exact ⟨⟨pT, hpT, argsOK_allAny (by simp [storWgsSig]) rfl⟩, (fun c hc hne => absurd (by
          simp only [storWstCaps, List.mem_cons, List.not_mem_nil, or_false] at hc
          rcases hc with rfl | rfl <;> rfl) hne),
        fun a h => absurd h (argCells_allAny (by simp [storWgsSig])),
        cpw_step gsc_sub2 hIV.1 E.hord E.hL⟩
    · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
      exact ⟨(lk_set_ne _ _ (by decide)).trans hP.2.1, (lk_set_ne _ _ (by decide)).trans hP.2.2⟩
    · exact hoareG_return (P := fun t => ∃ Γ, PI gsc Γ0 s0 p0 (LK ADDR KEY) Γ t)
        (fun t _ ⟨Γ, hIV, hL⟩ v hv => gq4_of_iv _ ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩)


theorem gs_hoare (E : GsEnt Γ0 s0 p0 ADDR) (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0)
    (hp0 : ptrsOf s0 = some p0)
    (hws : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig storWstCaps)
    (hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)))
    (hlk : s0.locals.lookup (nm "key") = some (.val (.word KEY))) :
    HoareG σ guestCtx (fun u => u = s0) gsBody (GQ4 gsc Γ0 s0 p0) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold gsBody
  refine hoareG_pre (gstepDec hH (sa_of_cs sl_cs) (by decide_cbv) (fun g _ => by simp [slSg]) E.hord E.hL
    (L := LK ADDR KEY) (Ln := LK ADDR KEY) ?_ ?_ (gs_tail E hws)) (fun t _ ht => ?_)
  · intro Γ s ⟨hIV, hla, hkey⟩ vs hvs callee
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    exact ⟨⟨pT, hpT, argsOK_allAny (by simp [slSg]) rfl⟩, (fun c hc => by cases hc),
      fun a h => absurd h (argCells_allAny (by simp [slSg])), fun y _ h => by
        obtain ⟨c, hc, -⟩ := h; cases hc⟩
  · intro Γ s vs callee v Γ1 st hP hvs hsh hT2 hinfo hq
    exact ⟨(lk_set_ne _ _ (by decide)).trans hP.2.1, (lk_set_ne _ _ (by decide)).trans hP.2.2⟩
  · subst ht
    exact ⟨Γ0, ⟨Struct.trk_refl hG0 hp0, fun g _ => rfl⟩, hla, hlk⟩

def GsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR KEY : BitVec 64, vs = [.val (.word ADDR), .val (.word KEY)] ∧ BsNN s Γ ∧ SrcKey Γ ADDR 20 tHTb20

/-- **`get_pre_tx_storage(addr, key)` for an address outside the pre-reads table** (the tab26-style entry
has `.buf 20`). `ws_get_storage` is a hypothesis (`Dn.csumm_wgs_Fin`). May end in the witness exceptions. -/
theorem sumSpec_get_pre_tx_storage_k
    (hws : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig storWstCaps) :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "get_pre_tx_storage") storWgsSig GsPre
      (fun _ s Γ a => CapPW gsc s Γ a) B4Post := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two code_get_pre_tx_storage (by decide) hl'
  obtain ⟨ADDR, KEY, hvs, hBs, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have E : GsEnt Γ0 s0 p0 ADDR := ⟨hord0, hL0, hBs, hkey⟩
  have H' := gs_hoare E hG0 hp0 hws (by rw [hloc]; exact hA) (by rw [hloc]; exact hB) s0 hs rfl
    (by rw [hr]; exact hg)
  rw [hr] at H'
  obtain ⟨hbl, Γ', hT⟩ := H' r rfl hna
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := storWgsSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW gsc s0 Γ0 a)
    (vs := [.val (.word ADDR), .val (.word KEY)]) (r := r) (trk_cpw_down (by decide) hT) hp0 (fun h => by simp [storWgsSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [storWgsSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv'] at hr; exact hbl⟩

end gs

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_get_pre_tx_storage_k
