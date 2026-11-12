import InitECandidate.Solver.MemSafe.Bal.PreReadCode

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

/-- `bs` is a non-null block-state object. -/
def BsNN (s : State σ) (Γ : Gam) : Prop :=
  ∃ B ∈ Γ, B.ty = tBS ∧ gword s (nm "bs") = some B.base

/-- A sentinel capability: when it is in the list, the list header and array cells (`Inc.LaPW`) of the
entry typing are writable too. -/
def laCap : Cap := ⟨nm "la#", 0, [], false⟩

/-- The tracked footprint of a function whose writes are table cells of the capabilities `cs` (and, with
`laCap ∈ cs`, list cells). -/
def cpw (cs : List Cap) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ (CapPW cs s0 Γ0 a ∨ (laCap ∈ cs ∧ Inc.LaPW Γ0 a))) ∨ ¬ p0.Allocated a.toNat

theorem cpw_of_caps {Γ0 Γ : Gam} {p0 p : Ptrs} {s s0 : State σ} (hord0 : p0.Ordered) (hord : p.Ordered)
    (hm : p0.Mono p) (hL0 : Layout guestC p0 Γ0) (hL : Layout guestC p Γ) (hnf : NewFresh Γ0 Γ p0 p)
    {cs cs0 : List Cap}
    (hcs : ∀ c ∈ cs, c.ks = [] ∧ ∃ c0 ∈ cs0, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t) {a : BitVec 64}
    (hpc : ProtCell guestC Γ a) (hpw : CapPW cs s Γ a) : cpw cs0 Γ0 s0 p0 a := by
  rcases capBack hord0 hord hm hL0 hL hnf hcs hpc hpw with ⟨h1, h2⟩ | h
  · exact Or.inl ⟨h1, Or.inl h2⟩
  · exact Or.inr h

theorem trk_cpw_down {cs : List Cap} (hl : laCap ∉ cs) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam}
    {t : State σ}
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs Γ0 s0 p0) Γ t) :
    Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0
      (fun a => (ProtCell guestC Γ0 a ∧ CapPW cs s0 Γ0 a) ∨ ¬ p0.Allocated a.toNat) Γ t := by
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := hT
  refine ⟨p, hp, hm, hx, hnf, hG, hmod.mono fun a ha => ?_, hpg, hd, hbe⟩
  rcases ha with ha | ha | ha
  · exact Or.inl ha
  · exact Or.inr (Or.inl ha)
  · refine Or.inr (Or.inr ?_)
    rcases ha with ⟨h1, h2 | ⟨h3, -⟩⟩ | h
    · exact Or.inl ⟨h1, h2⟩
    · exact absurd h3 hl
    · exact Or.inr h

section rp
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

def RpQ (cs : List Cap) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → t.globals.lookup (nm "bs") = s0.globals.lookup (nm "bs") ∧
    ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs Γ0 s0 p0) Γ t

theorem rpr_hoare (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {B : Obj} (hB : B ∈ Γ0) (hBt : B.ty = tBS) (hbs : gword s0 (nm "bs") = some B.base)
    {ADDR : BitVec 64} (hkey : SrcKey Γ0 ADDR 20 tHTb20)
    (hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR))) :
    Hoare σ guestCtx (fun u => u = s0) rprBody (RpQ (capsHT tHTb20) Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hbs' : s0.globals.lookup (nm "bs") = some (.val (.word B.base)) := AllocImpl.lookup_of_gword hbs
  unfold rprBody
  refine hoare_seq (R := fun r t => r = none ∧ t.globals.lookup (nm "bs") = s0.globals.lookup (nm "bs") ∧
      ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw (capsHT tHTb20) Γ0 s0 p0) Γ' t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (FunSpec.and (sumSpec_htab_set_k hF guestHooksR_mono htabHooks_guestR (th := tHTb20)
        (by decide)) (FunSpec.and (Frames.funSpec_dom _)
        (funSpec_bal_gw hF.hX (g := nm "bs") (by simp) (f := nm "htab_set") (by decide_cbv)))) ?_
    rintro s hs hsu vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
    subst s
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have ha1' := lp_ev_ld (ev_add2 (ev_gv hbs') (ev_cw _ 72)) ha1
    subst ha1'
    rw [Mpt.Leaves.ev_lv' hla] at ha2
    cases ha2
    rw [ev_cw] at ha3
    cases ha3
    have hT := Struct.trk_refl (PW := cpw (capsHT tHTb20) Γ0 s0 p0) hG0 hp0
    obtain ⟨qT, hqT, hordT, hLayT, hFlT, -, -, hW⟩ := id hG0
    rw [hp0] at hqT
    cases hqT
    have hsz : 8 * 9 + 8 ≤ B.size := by
      have := (hLayT.1 B hB).2.2.2.1
      rw [hBt] at this
      have h80 : (guestC.ty tBS).minSz = 80 := by decide
      omega
    have hfit := hFlT B hB 9 hsz
    rw [hBt, show (guestC.ty tBS) = bsTy from rfl] at hfit
    obtain ⟨T1, hT1, hT1b, hT1t⟩ : ∃ T1 ∈ Γ0, T1.base = rd s0.memory (B.cell 9) ∧ T1.ty = tHTb20 := by
      have : bsTy.slot 9 = .ptr tHTb20 := by decide
      rw [this] at hfit
      exact hfit
    have hcell : B.cell 9 = B.base + BitVec.ofNat 64 72 := by unfold Obj.cell; rfl
    rw [hcell] at hT1b
    have hko : hkOf T1.ty = .tab := by rw [hT1t]; exact hkOf_of_tab (by decide)
    have hw : tabW Γ0 s0 T1 := htabHooks_guestR.get _ s0 T1 hko (hW T1 hT1)
    have hko' : KeyOut s0 T1.base ADDR 20 p0.hp := keyOut_of_srcKey hordT hLayT hw hko hT1t hkey
    have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 := (Frames.ptrsOf_congr rfl).trans hp0
    have hpre : SetPreK tHTb20 [.val (.word (rd s0.memory (B.base + BitVec.ofNat 64 72))), .val (.word ADDR),
        .val (.word 1)] (callEntryStateHOLFinite s0 callee) Γ0 :=
      ⟨_, ADDR, 1, rfl, p0, hpe, by rw [← hT1b]; exact hko'⟩
    have hargs : ArgsOK guestC Γ0 p0 (setSigK tHTb20).params [.val (.word (rd s0.memory (B.base + BitVec.ofNat 64 72))),
        .val (.word ADDR), .val (.word 1)] :=
      argsOK3 ⟨_, rfl, T1, hT1, hT1b, hT1t⟩ trivial (by
        have : valPT tHTb20 = .any := by decide
        rw [this]; trivial)
    obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0 (sg := setSigK tHTb20)
      (Pre := SetPreK tHTb20) (PW' := fun _ s Γ y => CapPW (capsHT tHTb20) s Γ y)
      (Q := fun _ _ _ _ _ _ => True)
      (vs := [.val (.word (rd s0.memory (B.base + BitVec.ofNat 64 72))), .val (.word ADDR), .val (.word 1)])
      (r := .returned v) (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
      ⟨p0, hp0, hargs⟩ hpre (fun g _ => by simp [setSigK])
      (fun y hy => by
        exfalso
        obtain ⟨i, w, -, h⟩ := hy
        rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y', hj, -⟩
        · match i, hn with
          | 0, hn => simp [setSigK] at hn
          | 1, hn => simp [setSigK] at hn
          | 2, hn => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
              Option.some.injEq] at hn; exact valPT_ne_buf tHTb20 n hn
          | _ + 3, hn => simp [setSigK] at hn
        · match i, hj with
          | 0, hj => simp [setSigK] at hj
          | 1, hj => simp [setSigK] at hj
          | 2, hj => simp only [setSigK, List.getElem?_cons_succ, List.getElem?_cons_zero,
              Option.some.injEq] at hj; exact valPT_ne_bufArg tHTb20 j c d hj
          | _ + 3, hj => simp [setSigK] at hj)
      (fun y hpc hpw => Or.inl ⟨hpc, Or.inl hpw⟩) hd hbe
    exact ⟨rfl, hgw, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩
  · refine hoare_return fun t _ ⟨_, hb, Γ, hT⟩ v hv => ?_
    intro v' hv'
    cases hv'
    exact ⟨hb, Γ, Struct.trk_congr hH hT rfl rfl rfl rfl⟩


def RprPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR : BitVec 64, vs = [.val (.word ADDR)] ∧ BsNN s Γ ∧ SrcKey Γ ADDR 20 tHTb20

def rprSig : Sig := ⟨[.any], [], [], true⟩

/-- `bs` keeps its value. -/
def BsPost (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → t.globals.lookup (nm "bs") = s.globals.lookup (nm "bs")

/-- **`record_pre_state_read(addr)` for a key outside the pre-reads table** (e.g. an entry of the
transaction's tables): `SrcKey Γ addr 20 tHTb20`. Writes only `tHTb20` table cells. -/
theorem sumSpec_record_pre_state_read_k :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "record_pre_state_read") rprSig RprPre
      (fun _ s Γ a => CapPW (capsHT tHTb20) s Γ a) BsPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine sumSpecA_of_returns (noExc_record_pre_state_read hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, sa, hA⟩ := lookupCode_one code_record_pre_state_read hl'
  obtain ⟨ADDR, hvs, ⟨B, hB, hBt, hbs⟩, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)) := by rw [hloc]; exact hA
  have H' := rpr_hoare hG0 hp0 hB hBt hbs hkey hla s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨hbl, Γ', hT⟩ := H' v rfl
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := rprSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW (capsHT tHTb20) s0 Γ0 a)
    (vs := [.val (.word ADDR)]) (r := r) (trk_cpw_down (by decide) hT) hp0 (fun h => by simp [rprSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [rprSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv] at hv'; cases hv'; exact hbl⟩

end rp

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_record_pre_state_read_k
