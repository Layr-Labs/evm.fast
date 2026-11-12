import InitECandidate.Solver.SourceCost.CodeMap
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.PureList
import InitECandidate.Solver.SourceCost.LoopExtra.Arith.ZList

/-!
# The pure-function table is sound for the guest

`guestPureTbl`: in every context whose code map is the guest's (`guestCode`), each function
of `arithPureTbl` has the listed return shape and a body accepted by `pfB` over the
functions listed after it, so it is pure (`PureTbl`).
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString

variable {width : Nat} [NeZero width] {σ : Type}

theorem pureTbl_nil (C : CodeMap width) : PureTbl σ C [] := by
  intro f sh h; simp at h

/-- Each entry is checked against the entries after it. -/
def AllPure (C : CodeMap width) : List (MlS × ShapeHOL) → Prop
  | [] => True
  | (f, sh) :: pt =>
      (∀ values body callee rs,
        lookupCodeHOLFinite C.lookup f values = some (body, callee, rs) →
          rs = sh ∧ pfB pt [] (fun _ => true) [] body = true) ∧ AllPure C pt

theorem pureTbl_cons {C : CodeMap width} {pt : List (MlS × ShapeHOL)} (h : PureTbl σ C pt)
    {f : MlS} {sh : ShapeHOL}
    (hf : ∀ values body callee rs, lookupCodeHOLFinite C.lookup f values = some (body, callee, rs) →
      rs = sh ∧ pfB pt [] (fun _ => true) [] body = true) : PureTbl σ C ((f, sh) :: pt) := by
  intro g sh' hg values body callee rs hl
  by_cases hgf : g = f
  · subst hgf
    simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hg
    subst hg
    obtain ⟨hrs, hp⟩ := hf values body callee rs hl
    exact ⟨hrs, pfB_sound h hp⟩
  · have hb : (g == f) = false := by simpa using hgf
    simp only [List.lookup, hb] at hg
    exact h g sh' hg values body callee rs hl

theorem pureTbl_of_allPure {C : CodeMap width} : ∀ {pt : List (MlS × ShapeHOL)},
    AllPure C pt → PureTbl σ C pt
  | [], _ => pureTbl_nil C
  | (_, _) :: _, h => pureTbl_cons (pureTbl_of_allPure h.2) h.1

theorem lookupCode_some' {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {vs : List (ValueHOL 64)} {b : ProgHOL 64} {c : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (b, c, r)) :
    ∃ ps, code f = some (ps, b, r) := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body cl rs hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    split at hx
    · simp at hx
    · rename_i ps bd rr hcode
      split at hx
      · simp only [Option.some.injEq, Prod.mk.injEq] at hx
        obtain ⟨rfl, -, rfl⟩ := hx
        exact ⟨ps, hcode⟩
      · simp at hx

/-- A guest declaration named `name`, of return shape `sh`, whose body passes `pfB pt`. -/
def declPureOk (pt : List (MlS × ShapeHOL)) (name : String) (sh : ShapeHOL) :
    Flapjack.Decl (BitVec 64) → Bool
  | .function fd => decide (fd.name = name) && shapeEqHOL (shapeToHOL fd.returnShape) sh &&
      pfB pt [] (fun _ => true) [] (progToHOL fd.body)
  | _ => false

theorem pure_entry {X : Ctx 64} (hC : X.code.lookup = guestCode) {d : Flapjack.Decl (BitVec 64)}
    (hd : d ∈ Guest.Software.guestAst) {pt : List (MlS × ShapeHOL)} {name : String}
    {sh : ShapeHOL} (hok : declPureOk pt name sh d = true) :
    ∀ values body callee rs, lookupCodeHOLFinite X.code.lookup (ofString name) values =
      some (body, callee, rs) → rs = sh ∧ pfB pt [] (fun _ => true) [] body = true := by
  intro values body callee rs hl
  cases d with
  | function fd =>
      simp only [declPureOk, Bool.and_eq_true, decide_eq_true_eq] at hok
      obtain ⟨⟨hname, hsh⟩, hp⟩ := hok
      obtain ⟨ps, hcode⟩ := lookupCode_some' hl
      rw [hC, ← hname, guestCode_function hd] at hcode
      simp only [Option.some.injEq, Prod.mk.injEq] at hcode
      obtain ⟨-, rfl, rfl⟩ := hcode
      exact ⟨(shapeEqHOL_eq_true _ _).mp hsh, hp⟩
  | _ => simp [declPureOk] at hok

set_option maxRecDepth 1000000 in
set_option cbv.maxSteps 4000000000 in
set_option cbv.warning false in
theorem guestPureTbl {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    PureTbl σ X.code arithPureTbl := by
  apply pureTbl_of_allPure
  refine ⟨pure_entry hC (List.getElem_mem (n := 703) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 711) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 710) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 699) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 701) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 700) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 159) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 158) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 46) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 57) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 56) (by decide)) (by decide_cbv),
    pure_entry hC (List.getElem_mem (n := 55) (by decide)) (by decide_cbv), trivial⟩

/-! ## Zero summaries -/

def rfLeB : RF → Fact → Bool
  | .bot, _ => true
  | .is f, g => f == g
  | .top, _ => false

theorem rfLe_holds {r : RF} {f : Fact} {v : ValueHOL width} (h : rfLeB r f = true)
    (hv : RFHolds r v) : FactHolds f v := by
  cases r with
  | bot => exact absurd hv id
  | is g => simp only [rfLeB, beq_iff_eq] at h; subst h; exact hv
  | top => simp [rfLeB] at h

/-- One summary entry, checked with the entries after it. -/
def EntryZ (C : CodeMap width) (rest : List (MlS × List Nat × Fact)) (f : MlS) (ks : List Nat)
    (fact : Fact) : Prop :=
  ∀ values body callee rs, lookupCodeHOLFinite C.lookup f values = some (body, callee, rs) →
    (∀ k ∈ ks, ∃ v, values[k]? = some v ∧ zeroV v = true) →
    ∃ F0 n r, zA rest F0 body = some (n, r) ∧ rfLeB r fact = true ∧
      ∀ s : PanSemStateFiniteExact width σ, s.locals = callee → FSat F0 s

def AllZ (σ : Type) (C : CodeMap width) : List (MlS × List Nat × Fact) → Prop
  | [] => True
  | (f, ks, fact) :: rest => EntryZ (σ := σ) C rest f ks fact ∧ AllZ σ C rest

theorem zTbl_of_allZ {C : CodeMap width} : ∀ {zt : List (MlS × List Nat × Fact)},
    AllZ σ C zt → ZTblSound σ C zt
  | [], _ => by intro q hq; simp at hq
  | (f, ks, fact) :: rest, ⟨he, hr⟩ => by
      have hrest := zTbl_of_allZ hr
      intro q hq values body callee rs hl hz s hc hloc v hv
      rcases List.mem_cons.mp hq with rfl | hq
      · obtain ⟨F0, n, r, hza, hle, hsat⟩ := he values body callee rs hl hz
        obtain ⟨-, h2⟩ := zA_sound hrest body F0 n r hza s hc (hsat s hloc)
        exact rfLe_holds hle (h2 v hv)
      · exact hrest q hq values body callee rs hl hz s hc hloc v hv

theorem foldl_step_not_mem {V : Type} :
    ∀ (l : List (MlS × V)) (init : MlS → Option V) (x : MlS), x ∉ l.map Prod.fst →
      List.foldl (fun (map : MlS → Option V) (entry : MlS × V) =>
        fun current => if current = entry.1 then some entry.2 else map current) init l x = init x
  | [], _, _, _ => rfl
  | (a, b) :: l, init, x, hx => by
      simp only [List.map_cons, List.mem_cons, not_or] at hx
      simp only [List.foldl_cons]
      rw [foldl_step_not_mem l _ x hx.2]
      simp [hx.1]

theorem foldl_step_mem {V : Type} :
    ∀ (l : List (MlS × V)) (init : MlS → Option V), (l.map Prod.fst).Nodup →
      ∀ x v, (x, v) ∈ l →
      List.foldl (fun (map : MlS → Option V) (entry : MlS × V) =>
        fun current => if current = entry.1 then some entry.2 else map current) init l x = some v
  | [], _, _, _, _, h => by simp at h
  | (a, b) :: l, init, hnd, x, v, h => by
      simp only [List.map_cons, List.nodup_cons] at hnd
      simp only [List.foldl_cons]
      rcases List.mem_cons.mp h with h | h
      · simp only [Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        rw [foldl_step_not_mem l _ x hnd.1]
        simp
      · exact foldl_step_mem l _ hnd.2 x v h

/-- The callee locals bind each parameter to its argument. -/
theorem lookupCode_params {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {vs : List (ValueHOL 64)} {b : ProgHOL 64} {c : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (b, c, r)) :
    ∃ ps : List (MlS × ShapeHOL), code f = some (ps, b, r) ∧
      ∀ (k : Nat) (p : MlS × ShapeHOL) (v : ValueHOL 64), ps[k]? = some p → vs[k]? = some v →
        c.lookup p.1 = some v := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body cl rs hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, hc, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    split at hx
    · simp at hx
    · rename_i ps bd rr hcode
      split at hx
      · rename_i hcond
        simp only [Option.some.injEq, Prod.mk.injEq] at hx
        obtain ⟨rfl, hcl, rfl⟩ := hx
        refine ⟨ps, hcode, ?_⟩
        intro k p v hp hv
        rw [← hc]
        show cl p.1 = some v
        rw [← hcl]
        obtain ⟨hnd, hlen, -⟩ := hcond
        have hkp : k < ps.length := (List.getElem?_eq_some_iff.mp hp).1
        have hkv : k < vs.length := (List.getElem?_eq_some_iff.mp hv).1
        apply foldl_step_mem
        · rw [List.map_fst_zip (by simp; omega)]; exact hnd
        · have hz : ((ps.map Prod.fst).zip vs)[k]? = some (p.1, v) := by
            rw [List.getElem?_zip_eq_some]
            exact ⟨by rw [List.getElem?_map, hp]; rfl, hv⟩
          exact List.mem_of_getElem? hz
      · simp at hx

/-- A guest declaration `name` whose body, from zero facts on the parameters `ks`, returns
only values satisfying `fact` (checked with the summaries `rest`). -/
def declZOk (rest : List (MlS × List Nat × Fact)) (name : String) (ks : List Nat) (fact : Fact) :
    Flapjack.Decl (BitVec 64) → Bool
  | .function fd => decide (fd.name = name) &&
      match zA rest (ks.filterMap fun k => ((fd.params.map paramToHOL)[k]?).map fun p => (p.1, Fact.zero))
          (progToHOL fd.body) with
      | some (_, r) => rfLeB r fact
      | none => false
  | _ => false

theorem z_entry {X : Ctx 64} (hC : X.code.lookup = guestCode) {d : Flapjack.Decl (BitVec 64)}
    (hd : d ∈ Guest.Software.guestAst) {rest : List (MlS × List Nat × Fact)} {name : String}
    {ks : List Nat} {fact : Fact} (hok : declZOk rest name ks fact d = true) :
    EntryZ (σ := σ) X.code rest (ofString name) ks fact := by
  intro values body callee rs hl hz
  cases d with
  | function fd =>
      simp only [declZOk, Bool.and_eq_true, decide_eq_true_eq] at hok
      obtain ⟨hname, hzk⟩ := hok
      obtain ⟨ps, hcode, hpar⟩ := lookupCode_params hl
      rw [hC, ← hname, guestCode_function hd] at hcode
      simp only [Option.some.injEq, Prod.mk.injEq] at hcode
      obtain ⟨hps, rfl, -⟩ := hcode
      split at hzk
      · rename_i n r hza
        refine ⟨_, n, r, hza, hzk, ?_⟩
        intro s hloc z f hzf
        have hm := lookup_mem_of_some hzf
        simp only [List.mem_filterMap, Option.map_eq_some_iff, Prod.mk.injEq] at hm
        obtain ⟨k, hk, p, hp, rfl, rfl⟩ := hm
        rw [← hps] at hpar
        obtain ⟨v, hv, hzv⟩ := hz k hk
        exact ⟨v, by rw [hloc]; exact hpar k p v hp hv, hzv⟩
      · cases hzk
  | _ => simp [declZOk] at hok

set_option maxRecDepth 1000000 in
set_option cbv.maxSteps 4000000000 in
set_option cbv.warning false in
theorem guestZTbl {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    ZTblSound σ X.code arithZTbl := by
  apply zTbl_of_allZ
  refine ⟨z_entry hC (List.getElem_mem (n := 42) (by decide)) (by decide_cbv),
    z_entry hC (List.getElem_mem (n := 70) (by decide)) (by decide_cbv),
    z_entry hC (List.getElem_mem (n := 69) (by decide)) (by decide_cbv),
    z_entry hC (List.getElem_mem (n := 60) (by decide)) (by decide_cbv),
    z_entry hC (List.getElem_mem (n := 59) (by decide)) (by decide_cbv),
    z_entry hC (List.getElem_mem (n := 39) (by decide)) (by decide_cbv), trivial⟩

theorem guestArithTbls {X : Ctx 64} (hC : X.code.lookup = guestCode) : ArithTbls σ X.code :=
  ⟨guestPureTbl hC, guestZTbl hC⟩

end InitECandidate.Solver.SourceCost.Arith
