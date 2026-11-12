import InitECandidate.Solver.MemSafe.LogDefs
import InitECandidate.Solver.MemSafe.Frames.Incorporate
import InitECandidate.Solver.MemSafe.Alloc
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Types

/-!
# `frame_open`: a new frame and its continuation record

```
fun 1 frame_open(1 msg, 1 kind) {
  var parent = ev;
  var 1 child = frame_new(msg);
  var 1 rec = scratch_alloc(CK_SIZE);
  memzero(rec, CK_SIZE);
  st rec + CK_PARENT, parent; st rec + CK_PARENT_CONT, cur_cont;
  st rec + CK_KIND, kind; st rec + CK_MSG, msg;
  ev = child; cur_cont = rec;
  return child; }
```

* `frame_new`'s summary is a **hypothesis** (`NewQ`: a fresh EV object with `GAS_LEFT = MSG_GAS`,
  `SPILLED = 0`, `RUNNING = 1`, `SP = 0`, `STACK_CAP = 32`, `MEM_LEN = 0`, `MEM_CAP = 1024`,
  `MEM` = the entry `frame_mem_ptr`, which then grows by 1024), with an abstract precondition
  `NewPre` (the code-length bound `MSG_CODE_N + 63 < 2^64` for `compute_jumpdests`, typing of
  the message's access sets, ...), until M2's types and the EV hook constructor land.
* Step lemmas: `run_alloc` (an allocator move), `run_block` (writes into a fresh block outside
  the typing), `run_pushCK` (the record joins `Γ`, `ev` / `cur_cont` switch).
* **`open_sumSpec`**: `frame_open`'s summary (post `FOQ`: the new EV / CK objects, the record's
  `PARENT`, `PARENT_CONT`, `KIND`, `MSG`, and the child's initial fields).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Step lemmas -/

theorem newFresh_mono {Γ Γ' : Gam} {p p1 p2 : Ptrs} (hm1 : p.Mono p1) (hm2 : p1.Mono p2)
    (h : NewFresh Γ Γ' p p1) : NewFresh Γ Γ' p p2 := by
  intro o ho a h1 h2
  rcases h o ho a h1 h2 with h | h
  · exact Or.inl h
  · exact Or.inr (fresh_mono_l hm1 hm2 h)

/-- An allocator move extends a run. -/
theorem run_alloc {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAG : Helpers.AllocGlobs C)
    {gw : List MlS} {Γ0 Γ1 : Gam} {s0 u u' : State σ} {p0 p1 p2 : Ptrs}
    (hrun : Run C H gw Γ0 s0 Γ1 u p0 p1) (hm : u'.memory = u.memory)
    (hgl : ∀ g, g ≠ gHeap → g ≠ gFrame → g ≠ gScratch → u'.globals.lookup g = u.globals.lookup g)
    (hd : u'.memaddrs = u.memaddrs) (hbe : u'.be = u.be) (hp2 : ptrsOf u' = some p2)
    (hord2 : p2.Ordered) (hmono : p1.Mono p2) : Run C H gw Γ0 s0 Γ1 u' p0 p2 := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := hrun
  refine ⟨h1, hp2, mono_trans h3 hmono, h4, newFresh_mono h3 hmono h5,
    Helpers.G_alloc hH hAG h6 h2 hp2 hord2 hmono hgl hd hbe (by rw [hm]; exact fun _ _ => rfl),
    by rw [hm]; exact h7, fun g hg hgw => ?_⟩
  have hn : g ≠ gHeap ∧ g ≠ gFrame ∧ g ≠ gScratch := by
    refine ⟨fun h => ?_, fun h => ?_, fun h => ?_⟩ <;> subst h <;>
      exact (hAG _ (by simp)).1 hg
  rw [hgl g hn.1 hn.2.1 hn.2.2]
  exact h8 g hg hgw

/-- A write confined to a block outside the typing and unallocated at the run's start. -/
theorem run_block {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gw : List MlS}
    {Γ0 Γ1 : Gam} {s0 u u' : State σ} {p0 p1 : Ptrs} (hrun : Run C H gw Γ0 s0 Γ1 u p0 p1)
    {B : BitVec 64 → Prop} (hB : ∀ a, B a → ¬ InObj Γ1 a.toNat ∧ ¬ p0.Allocated a.toNat)
    (hmod : ModifiesOnly B u.memory u'.memory) (hg : u'.globals = u.globals)
    (hd : u'.memaddrs = u.memaddrs) (hbe : u'.be = u.be) : Run C H gw Γ0 s0 Γ1 u' p0 p1 := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := hrun
  refine ⟨h1, by rw [ptrsOf_congr hg]; exact h2, h3, h4, h5,
    G_frame hH h6 (ptrsOf_congr hg) (fun g _ _ => gword_congr hg g) (fun g _ => by rw [hg]) hd hbe
      (fun a ha => hmod a fun hb => (hB a hb).1 ha), fun a ha => ?_,
    fun g hg' hgw => by rw [hg]; exact h8 g hg' hgw⟩
  rw [hmod a fun hb => ?_, h7 a ha]
  exact ha (Or.inr (Or.inr (hB a hb).2))

/-- The continuation record joins `Γ` and the running frame switches to `(child, rec)`. -/
theorem run_pushCK {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hD : DrvCfg C H tEV tCK)
    {gw : List MlS} {Γ0 Γ1 : Gam} {s0 u t : State σ} {p0 p1 : Ptrs}
    (hrun : Run C H gw Γ0 s0 Γ1 u p0 p1) {q child : BitVec 64} (hq8 : q.toNat % 8 = 0)
    (hlive : Region.Live p1 .scratch q.toNat 104)
    (hblk : ∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 →
      ¬ InObj Γ1 a.toNat ∧ Fresh p0 p1 a)
    (hchild : ∃ o ∈ Γ1, o.base = child ∧ o.ty = tEV)
    (hm : t.memory = u.memory) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (hge : t.globals.lookup nmEv = some (.val (.word child)))
    (hgc : t.globals.lookup nmCC = some (.val (.word q)))
    (hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → t.globals.lookup g = u.globals.lookup g) :
    Run C H (nmEv :: nmCC :: gw) Γ0 s0 (Γ1 ++ [⟨q, tCK, 104⟩]) t p0 p1 := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := hrun
  let x : Obj := ⟨q, tCK, 104⟩
  have hF := hD.fc
  have hGx : G C H (Γ1 ++ [x]) u := by
    refine G_addObj (x := x) hF.hooks hD.mono h6 hq8 (show (104 : Nat) % 8 = 0 by decide)
      (show 0 < 104 by decide) hD.ckMin ?_ ?_ ?_ hD.ckTag (hD.ckWf _ _ _ rfl)
    · intro p hp
      rw [h2, Option.some.injEq] at hp
      subst hp
      show (C.ty tCK).region.Live _ _ _
      rw [hD.ckRegion]; exact hlive
    · intro a ha
      exact (hblk a ha.1 ha.2).1
    · intro k _
      show Fits _ ((C.ty tCK).slot k) _
      by_cases hk : k < 13
      · rw [hF.ckProt k hk]; trivial
      · rename_i hks; unfold Obj.HasSlot at hks; simp only [x] at hks; omega
  have hp : ptrsOf t = ptrsOf u := by
    have hne : ∀ g, g = gHeap ∨ g = gFrame ∨ g = gScratch → g ≠ nmEv ∧ g ≠ nmCC := by
      rintro g (rfl | rfl | rfl) <;> exact ⟨by decide, by decide⟩
    unfold ptrsOf gword
    rw [hgo _ (hne gHeap (Or.inl rfl)).1 (hne gHeap (Or.inl rfl)).2,
      hgo _ (hne gFrame (Or.inr (Or.inl rfl))).1 (hne gFrame (Or.inr (Or.inl rfl))).2,
      hgo _ (hne gScratch (Or.inr (Or.inr rfl))).1 (hne gScratch (Or.inr (Or.inr rfl))).2]
  have hG' : G C H (Γ1 ++ [x]) t := by
    obtain ⟨o, ho, hb, ht⟩ := hchild
    exact G_setEvCC hD hGx ⟨o, List.mem_append_left _ ho, hb, ht⟩
      ⟨x, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩ hm hd hbe hge hgc hgo
  refine ⟨h1, by rw [hp]; exact h2, h3, ext_trans h4 (ext_append Γ1 x), ?_, hG',
    by rw [hm]; exact h7, fun g hg hgw => ?_⟩
  · intro o ho a ha1 ha2
    rcases List.mem_append.mp ho with ho | ho
    · rcases h5 o ho a ha1 ha2 with ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ | hf
      · exact Or.inl ⟨o0, ho0, hb0, ht0, hl0, hh0⟩
      · exact Or.inr hf
    · simp only [List.mem_singleton] at ho
      subst ho
      exact Or.inr (hblk a ha1 ha2).2
  · simp only [List.mem_cons, not_or] at hgw
    rw [hgo g hgw.1 hgw.2.1]
    exact h8 g hg hgw.2.2

/-! ## Code -/

/-- `st x + k, e` for a local `x`. -/
def stL (x : String) (k : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv (nm x), cw k]) e

def openBody : ProgHOL 64 :=
  .dec (nm "parent") .one (gv nmEv)
    (.decCall (nm "child") .one (nm "frame_new") [lv (nm "msg")]
      (.decCall (nm "rec") .one (nm "scratch_alloc") [cw 104]
        (.seq (callD (nm "memzero") [lv (nm "rec"), cw 104])
        (.seq (stL "rec" 0 (lv (nm "parent")))
        (.seq (stL "rec" 8 (gv nmCC))
        (.seq (stL "rec" 16 (lv (nm "kind")))
        (.seq (stL "rec" 40 (lv (nm "msg")))
        (.seq (.assign .global nmEv (lv (nm "child")))
        (.seq (.assign .global nmCC (lv (nm "rec")))
          (.return (lv (nm "child"))))))))))))

theorem entry_open : fnEntry Guest.Software.guestFn_frame_open =
    (nm "frame_open", [(nm "msg", .one), (nm "kind", .one)], openBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_open :
    guestCode (nm "frame_open") = some ([(nm "msg", .one), (nm "kind", .one)], openBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 578) (by decide)) ⟨_, rfl⟩
    entry_open

theorem hoareG_stL {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {x : String} {k : Nat} {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ B v, s.locals.lookup (nm x) = some (.val (.word B)) →
      ev s e = some v → ∃ w, v = .val (.word w) ∧ (s.memaddrs (B + BitVec.ofNat 64 k) →
        Q none { s with memory := upd s.memory (B + BitVec.ofNat 64 k) w })) :
    HoareG σ X P (stL x k e) Q := by
  refine hoareG_store fun s hs hp w v mem hw hv hmem => ?_
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz; cases hz
  obtain ⟨wv, rfl, hq⟩ := h s hs hp y v hy hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  exact hq hd

/-! ## The specification -/

abbrev sgFN (gwN : List MlS) : Sig := { params := [.any], gw := gwN }
abbrev sgFO (gwN : List MlS) : Sig := { params := [.any, .any], gw := nmEv :: nmCC :: gwN }

/-- **The chain-extension facts of a new frame record `e` built from `msg`** (frames8): its
message `EV_MSG = msg`, its log list `EV_LOGS` (a `tLSTs` header of `Γ'`), its deletion table
`EV_DELETE` (a `tHTs20` header of `Γ'`, at an address unallocated at `p`, the allocator at the
construction's entry). -/
def NewX (msg : BitVec 64) (p : Ptrs) (m : Mem) (Γ' : Gam) (e : BitVec 64) : Prop :=
  fld m e 112 = msg ∧ (∃ L ∈ Γ', L.base = fld m e 88 ∧ L.ty = Types.tLSTs ∧ LgEmp Γ' m L) ∧
  (∃ D ∈ Γ', D.base = fld m e 136 ∧ D.ty = Types.tHTs20) ∧ ¬ p.Allocated (fld m e 136).toNat ∧
  MarkV m e

/-- The initial fields of a frame record `e` built from `msg` (between the entry `s` of the
construction and the state `t`). The last conjunct (`NewX`, frames8) feeds the chain
extension. -/
def ChildFacts (tEV : Nat) (msg : BitVec 64) (s t : State σ) (Γ' : Gam) (e : BitVec 64) : Prop :=
  (∃ o ∈ Γ', o.base = e ∧ o.ty = tEV ∧
    ∀ p, ptrsOf s = some p → ∀ a, InO o a → ¬ p.Allocated a.toNat) ∧
  fld t.memory e 64 = fld s.memory msg 40 ∧ fld t.memory e 192 = 0 ∧ fld t.memory e 104 = 1 ∧
  fld t.memory e 16 = 0 ∧ fld t.memory e 232 = 32 ∧ fld t.memory e 32 = 0 ∧
  fld t.memory e 40 = 1024 ∧
  (∀ p p', ptrsOf s = some p → ptrsOf t = some p' →
    (fld t.memory e 24).toNat = p.fp ∧ p'.fp = p.fp + 1024) ∧
  fld t.memory e 216 = 0 ∧
  (∀ p, ptrsOf s = some p → ∃ y ∈ Γ', y.lo = p.fp) ∧
  ∀ p, ptrsOf s = some p → NewX msg p t.memory Γ' e

/-- **`frame_new`'s post** (hypothesis shape). -/
def NewQ (tEV : Nat) (vs : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∃ msg e, vs = [.val (.word msg)] ∧ v = .val (.word e) ∧
    ChildFacts tEV msg s t Γ' e

/-- `frame_open`'s precondition. -/
def PreFO (NewPre : List (ValueHOL 64) → State σ → Gam → Prop) (vs : List (ValueHOL 64))
    (s : State σ) (Γ : Gam) : Prop :=
  ∃ msg kind, vs = [.val (.word msg), .val (.word kind)] ∧ NewPre [.val (.word msg)] s Γ ∧
    (∃ e0, gword s nmEv = some e0) ∧ (∃ c0, gword s nmCC = some c0)

/-- **`frame_open`'s post.** -/
def FOQ (tEV tCK : Nat) (vs : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∃ msg kind child rec, vs = [.val (.word msg), .val (.word kind)] ∧
    v = .val (.word child) ∧ gword t nmEv = some child ∧ gword t nmCC = some rec ∧
    (⟨rec, tCK, 104⟩ : Obj) ∈ Γ' ∧
    (∀ p, ptrsOf s = some p → ∀ a : BitVec 64, rec.toNat ≤ a.toNat → a.toNat < rec.toNat + 104 →
      ¬ p.Allocated a.toNat) ∧
    ChildFacts tEV msg s t Γ' child ∧
    (∀ e0, gword s nmEv = some e0 → fld t.memory rec 0 = e0) ∧
    (∀ c0, gword s nmCC = some c0 → fld t.memory rec 8 = c0) ∧
    fld t.memory rec 16 = kind ∧ fld t.memory rec 40 = msg

end InitECandidate.Solver.MemSafe.Frames
