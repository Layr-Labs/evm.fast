import InitECandidate.Solver.MemSafe.Exb.Ph
import InitECandidate.Solver.MemSafe.Wg.CostBase
import InitECandidate.Solver.MemSafe.Frames.FinCost
import InitECandidate.Solver.Band.Rules

/-!
# Sp: the `payload_header` cost walk, kit

`CH P c Q B`: the Hoare fact (`HoareG`) of the memory-safety walk together with the conditional cost `Inv.CostP`. The rules mirror
`Exb.pp_seq`, `pp_dec`, `pp_decCall`: the continuation of a binder is entered at the exact state, so a cost walk needs the same
state facts the memory-safety walk derives there.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Exb

variable {σ : Type}

def CH (P : State σ → Prop) (c : ProgHOL 64) (Q : Option (PanSemResultExact 64) → State σ → Prop) (B : Nat) : Prop :=
  HoareG σ guestCtx P c Q ∧ Inv.CostP σ guestCtx P c B

theorem ch_pre {P P' : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop} {B : Nat}
    (h : CH P c Q B) (hP : ∀ s, InCtx s guestCtx → P' s → P s) : CH P' c Q B :=
  ⟨hoareG_pre h.1 hP, h.2.pre hP⟩

theorem ch_mono {P : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop} {B B' : Nat}
    (h : CH P c Q B) (hle : B ≤ B') : CH P c Q B' := ⟨h.1, h.2.mono hle⟩

theorem ch_false {P : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop} {B : Nat}
    (h : ∀ s, InCtx s guestCtx → P s → False) : CH P c Q B :=
  ⟨hoareG_false h, fun s hs hp _ => (h s hs hp).elim⟩

theorem ch_leaf {P : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop} {B : Nat}
    (hh : HoareG σ guestCtx P c Q) (hc : Cost σ guestCtx c B) : CH P c Q B :=
  ⟨hh, Inv.costP_of_cost hc⟩

section rules
variable {a : Act σ} {L L' L2 L3 : LocalsH → Prop} {E E' E2 : Gam → Ptrs → Mem → LocalsH → Prop}
  {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop}

theorem ch_seq {P : State σ → Prop} {c k : ProgHOL 64} {Bc Bk : Nat} (hc : CH P c (PP a L E Rv) Bc)
    (hk : CH (PJ a L E) k (PP a L' E' Rv) Bk) : CH P (.seq c k) (PP a L' E' Rv) (Bc + Bk) :=
  ⟨pp_seq hc.1 hk.1, Inv.costP_seq hc.2
    (Frames.hoare_of_hoareG (hoareG_conseq hc.1 (fun _ _ h => h) fun r t _ _ h hr => h.1 hr)) hk.2⟩

theorem ch_dec (hH : HooksLawful a.C a.H) {L1 : LocalsH → Prop} {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {B : Nat}
    (h : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s → E Γ q s.memory s.globals → ∀ v,
      ev s e = some v → L1 (setVarHOLFinite x v s).locals)
    (hk : CH (PJ a L1 E) body (PP a L2 E' Rv) B)
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    CH (PJ a L E) (.dec x sh e body) (PP a L3 E' Rv) B := by
  refine ⟨pp_dec hH h hk.1 hres, Inv.costP_dec fun s hs ⟨hL, Γ, q, he, hh, hE⟩ v hv _ => ?_⟩
  refine hk.2.pre fun t _ ht => ?_
  subst ht
  exact ⟨h s Γ q hs hL hh hE v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hE⟩

/-- **`var x = f(args); k`** through a summary, `f` with a table cost. -/
theorem ch_decCall (ha : ActOK a guestCtx) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ guestCtx a.Cb a.H f sg' Pre (fun _ s Γ x => CapPW [] s Γ x) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop} (hLc : FunSpec σ guestCtx f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64}
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64)) (callee : HolFiniteMapExact MlS (ValueHOL 64))
      (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs), InCtx s guestCtx → L s.locals → evs s args = some vs →
      E Γ q s.memory s.globals → Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' → Heap a Γ q s → Ext Γ Γ' →
      Heap a Γ' q' st → q.Mono q' → NewFresh Γ Γ' q q' → (sg'.grows = false → NewFresh Γ Γ' q q) →
      Trie.Mod a sg' [] vs Γ q s st → RetOK Γ' q q' vs sg'.ret v → shapeEqHOL (shapeOfHOLExact v) sh = true →
      E1 v Γ' q' st.memory st.globals)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    {Bf Bk : Nat} (hc : CalleeCost σ guestCtx f Bf)
    (hk : ∀ v, CH (PJ a (L1 v) (E1 v)) k (PP a L2 E2 Rv) Bk)
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    CH (PJ a L E) (.decCall rn sh f args k) (PP a L3 E2 Rv) (1 + Bf + Bk) := by
  refine ⟨pp_decCall ha hf hLc hgw hgr hargs hpost hL1 (fun v => (hk v).1) hres, ?_⟩
  refine Band.costP_decCall (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hc) (fun _ _ _ _ _ _ => trivial) (hf.and hLc) ?_
  intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
  obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
  obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hmd, hret, hQ⟩ := Trie.heap_callGX (r := .returned v)
    (Pre := Pre) (Q := Q) ha hh (capSub_nil _) hR (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
  have hE1 := hpost s st vs callee v Γ Γ' q q' hs hL hvs hE hLc' hQ hh hext hh' hmo hnf hnfp hmd (hret v rfl) hsh
  refine (hk v).2.pre fun t _ ht => ?_
  subst ht
  exact ⟨hL1 s st v hL hsh, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', hE1⟩

theorem cost_callT {f : MlS} {args : List (ExpHOL 64)} {B : Nat} (h : Shards.finalState.1.lookup f = some B) :
    Cost σ guestCtx (callD f args) (1 + B + 0) :=
  cost_call (fun _ _ _ _ hl => Wire.calleeCost_guest (Wire.tbLe_of_eq h) _ _ _ _ hl) (by intro _ _ _ _ h; cases h)

def cMz : Nat := 73786976294838206468
def cKec : Nat := 680564733841876927387917816706275213341

theorem cost_memzero {args : List (ExpHOL 64)} : Cost σ guestCtx (callD (nm "memzero") args) (1 + cMz + 0) :=
  cost_callT rfl

theorem cost_keccak {args : List (ExpHOL 64)} : Cost σ guestCtx (callD (nm "keccak256") args) (1 + cKec + 0) :=
  cost_callT rfl

theorem chS {P : State σ → Prop} {a e : ExpHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ guestCtx P (.store a e) Q) : CH P (.store a e) Q 0 := ch_leaf h (cost_store _ _)

theorem chSB {P : State σ → Prop} {a e : ExpHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ guestCtx P (.storeByte a e) Q) : CH P (.storeByte a e) Q 0 := ch_leaf h (cost_storeByte _ _)

theorem chMz {P : State σ → Prop} {args : List (ExpHOL 64)} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ guestCtx P (callD (nm "memzero") args) Q) : CH P (callD (nm "memzero") args) Q (1 + cMz + 0) :=
  ch_leaf h cost_memzero

theorem chKec {P : State σ → Prop} {args : List (ExpHOL 64)} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ guestCtx P (callD (nm "keccak256") args) Q) : CH P (callD (nm "keccak256") args) Q (1 + cKec + 0) :=
  ch_leaf h cost_keccak

theorem ch_rv {a : Act σ} {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {Rv Rv' : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop} {P : State σ → Prop} {p : ProgHOL 64} {B : Nat}
    (h : CH P p (PP a L E Rv) B) (hm : ∀ Γ q m g v, Rv Γ q m g v → Rv' Γ q m g v) : CH P p (PP a L E Rv') B :=
  ⟨pp_rv h.1 hm, h.2⟩

theorem ch_decKeep {a : Act σ} (hH : HooksLawful a.C a.H) {Rv : Gam → Ptrs → Mem → LocalsH → ValueHOL 64 → Prop}
    {kv : List (MlS × ValueHOL 64)} {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {L2 : LocalsH → Prop}
    {E E2 : Gam → Ptrs → Mem → LocalsH → Prop} {B : Nat} (hx : ∀ p ∈ kv, p.1 ≠ x)
    (hk : CH (PJ a (Trie.LV kv) E) body (PP a (fun _ => False) E2 Rv) B) :
    CH (PJ a (Trie.LV kv) E) (.dec x sh e body) (PP a L2 E2 Rv) B :=
  ch_dec hH (fun s Γ q _ hL _ _ v _ => Trie.lv_set hL hx v) hk (fun _ _ _ h => h.elim)

/-- **`var x = f(args); k`** through an above-writer spec, `f` with a table cost. -/
theorem ch_decCallAW (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
    (hgrA : a.sg.grows = true) {rn : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hf : Aw.AWSpec σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) f gw Pre Post) (hgw : ∀ g ∈ gw, g ∈ a.sg.gw)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop} (hLc : FunSpec σ guestCtx f Lc)
    {L1 : ValueHOL 64 → LocalsH → Prop} {E1 : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64}
    (hB : ∀ Γ q m g, E Γ q m g → Aw.Below Γ q.hp)
    (hPre : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s → E Γ q s.memory s.globals →
      ∀ vs, evs s args = some vs → ∀ callee, Pre vs (callEntryStateHOLFinite s callee) q.hp)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64)) (callee : HolFiniteMapExact MlS (ValueHOL 64))
      (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs), InCtx s guestCtx → L s.locals → evs s args = some vs →
      E Γ q s.memory s.globals → Heap a Γ q s → Heap a Γ' q' st → Ext Γ Γ' → NewFresh Γ Γ' q q → q.Mono q' →
      Aw.Below Γ' q.hp → ModifiesOnly (AwFoot Types.guestC Γ q) s.memory st.memory →
      Post vs (callEntryStateHOLFinite s callee) v st → Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧ E1 v Γ'' q' st.memory st.globals)
    (hL1 : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L1 v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    {Bf Bk : Nat} (hc : CalleeCost σ guestCtx f Bf)
    (hk : ∀ v, CH (PJ a (L1 v) (E1 v)) k (PP a L2 E2 Rv) Bk)
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (rn, m0.lookup rn))) :
    CH (PJ a L E) (.decCall rn sh f args k) (PP a L3 E2 Rv) (1 + Bf + Bk) := by
  refine ⟨pp_decCallAW ha haC hCb haH hfp hsp hgrA hf hgw hLc hB hPre hpost hL1 (fun v => (hk v).1) hres, ?_⟩
  refine Band.costP_decCall (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost hc) (fun _ _ _ _ _ _ => trivial)
    (FunSpec.and hf hLc) ?_
  intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
  have hord := heap_ord hh
  have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
  have hGe : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [haC, haH] at this
    exact this
  obtain ⟨Γ', q', hG', hq', hext, hnf, hB', hmo, hmod, hpg, hPost⟩ := hR v rfl Γ q.hp q hGe hq0 (hB _ _ _ _ hE)
    hord.2.2.2.2.2.1 hord.1 le_rfl (hPre s Γ q hs hL hh hE vs hvs callee)
  have hG'' : G a.C a.H Γ' st := by rw [haC, haH]; exact hG'
  have hh' : Heap a Γ' q' st := by
    refine heap_after_aw (gw := gw) ha (by rw [haC, hCb]) hfp hsp hh hG'' hq' hmo hext hnf ?_ ?_ hgw hgrA
    · rw [hCb]; exact hmod
    · rw [hCb]; exact hpg
  obtain ⟨Γ'', hx2, hh2, hE1⟩ := hpost s st vs callee v Γ Γ' q q' hs hL hvs hE hh hh' hext
    (nf0_of_below hord (heap_ord hh') hnf hB') hmo hB' hmod hPost hLc' hsh
  refine (hk v).2.pre fun t _ ht => ?_
  subst ht
  exact ⟨hL1 s st v hL hsh, Γ'', q', ext_trans (ext_trans he hext) hx2,
    heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hE1⟩

theorem gword_of_heap {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) (haC : a.C = Types.guestC)
    (hgw : a.sg.gw = []) {g : MlS} (hg : g ∈ Types.guestC.PG) : gword s g = gword a.s0 g := by
  have := hh.2.2.2.2.2.2.1 g (by rw [haC]; exact hg) (by rw [hgw]; simp)
  unfold gword; rw [this]

theorem jrev_of_heap {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) (haC : a.C = Types.guestC)
    (hgw : a.sg.gw = []) (hjr : Frames.JrNZ a.s0) (hev : Eb.EvCc a.s0) : Frames.JrNZ s ∧ Eb.EvCc s := by
  have hJ : Frames.JrPG Types.guestC := by decide
  refine ⟨Frames.jrNZ_of_gword (fun g hg => gword_of_heap hh haC hgw (hJ g hg)) hjr, ?_⟩
  obtain ⟨⟨e, he, hel⟩, ⟨c, hc, hcl⟩⟩ := hev
  refine ⟨⟨e, ?_, hel⟩, ⟨c, ?_, hcl⟩⟩
  · rw [gword_of_heap hh haC hgw (by decide : Frames.nmEv ∈ Types.guestC.PG)]; exact he
  · rw [gword_of_heap hh haC hgw (by decide : Frames.nmCC ∈ Types.guestC.PG)]; exact hc

theorem slaObj_bound {Γ : Gam} {A N : BitVec 64} (h : SlaObj Γ A N) : N.toNat < 2 ^ 50 := by
  rcases h with h | ⟨o, ho, h1, h2, h3, h4⟩
  · omega
  · have : heapEnd < 2 ^ 54 := by decide
    omega

/-- A call of `build_mpt_indexed` with the cost hypothesis, at the precondition of `Eb.BmiPreC`. -/
theorem ch_bmi (ha : ActOK a guestCtx) {Bbmi : Nat} (hBmi : Eb.HypBmiCost σ Bbmi) (haC : a.C = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ))
    (hgw : a.sg.gw = []) (hjr : Frames.JrNZ a.s0) (hev : Eb.EvCc a.s0) {args : List (ExpHOL 64)}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hH : HoareG σ guestCtx (PJ a L E) (callD (nm "build_mpt_indexed") args) Q)
    (hpre : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx → L s.locals → Heap a Γ q s →
      E Γ q s.memory s.globals → ∀ vs, evs s args = some vs →
      ∃ A N O : BitVec 64, vs = [.val (.word A), .val (.word N), .val (.word O)] ∧ N.toNat < 2 ^ 50 ∧
        ArgsOK Types.guestC Γ q Trie.bmiSig.params vs ∧ ∀ callee, Trie.BmiPre vs (callEntryStateHOLFinite s callee) Γ) :
    CH (PJ a L E) (callD (nm "build_mpt_indexed") args) Q (1 + Bbmi + 0) := by
  refine ⟨hH, Inv.costP_callD hBmi ?_⟩
  intro s hs ⟨hL, Γ, q, he, hh, hE⟩ vs hvs callee
  obtain ⟨A, N, O, rfl, hN, hA, hpb⟩ := hpre s Γ q hs hL hh hE _ hvs
  have hGe : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [haC, haH] at this
    exact this
  have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q := hh.2.1
  obtain ⟨hj, he2⟩ := jrev_of_heap hh haC hgw hjr hev
  refine ⟨Γ, q, hGe, hq0, Eb.argsOK_cc rfl, Frames.jrNZ_congr rfl hj, ?_, q, hq0, hA, hpb callee, A, N, O, rfl, hN⟩
  exact he2

def cCrh : Nat := 4083388403051261562445939004719277015092
def cEer : Nat := 1361129467683753854093306102685297016844

theorem chCrh {P : State σ → Prop} {args : List (ExpHOL 64)} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ guestCtx P (callD (nm "compute_requests_hash") args) Q) :
    CH P (callD (nm "compute_requests_hash") args) Q (1 + cCrh + 0) :=
  ch_leaf h (cost_callT rfl)

theorem ch_exE {α : Type} {L : LocalsH → Prop} {E : α → Gam → Ptrs → Mem → LocalsH → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {B : Nat}
    (h : ∀ x, CH (PJ a L (E x)) c Q B) :
    CH (PJ a L (fun Γ q m g => ∃ x, E x Γ q m g)) c Q B :=
  ⟨fun s hs ⟨hL, Γ, q, he, hh, x, hE⟩ hg => (h x).1 s hs ⟨hL, Γ, q, he, hh, hE⟩ hg,
   fun s hs ⟨hL, Γ, q, he, hh, x, hE⟩ hg => (h x).2 s hs ⟨hL, Γ, q, he, hh, hE⟩ hg⟩

theorem cost_allocCall {k : VarKind} {x : MlS} {args : List (ExpHOL 64)} :
    Cost σ guestCtx (.call (some (some (k, x), none)) (nm "alloc") args) (1 + 2 + 0) :=
  cost_call (Bf := 2) (Bh := 0) (fun _ _ _ _ hl => Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl _ _ _ _ hl)
    (by intro _ _ _ _ h; cases h)

end rules

end InitECandidate.Solver.MemSafe.Sp
