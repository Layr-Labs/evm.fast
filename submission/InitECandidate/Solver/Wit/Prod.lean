import InitECandidate.Solver.Wit.WitG
import InitECandidate.Solver.MemSafe.Caps

/-!
# Producers of the witness invariant (witg, task (c))

The `wsD` row's invariant `WsRW` is created once, by `state_init`, from two frozen node DBs built
by `nodedb_build` (`run_attempt`: `nodedb = nodedb_build(si.state)`, `codedb =
nodedb_build(si.codes)`, `state_init(nodedb, root, codedb)`). This file proves the generic glue
and states the two hand-summary obligations precisely.

* **`rcell_keep`**: a `SumCore` step does not write a record cell (`RCell`s are `prot` slots of
  live `Γ` objects: not `WCell`, not in a buffer argument (`BufOK` allows only `scalar` cells of
  `Γ` objects), allocated), unless its extra write set `PW` says so.
* **`ndbR_sumCore`** / **`slArr_sumCore`**: a frozen node DB / a slice array survives any such
  step (between `nodedb_build`'s return and the adoption of `ws`: the second `nodedb_build`, and
  `state_init`'s prefix). `ndbR_summ`: the `Summ` / `PW = False` case.
* **`wsRW_snoc`**, **`wf_ws_snoc`**: adopting the 40-byte `ws` block as a `tWSR` object whose
  slots 0 and 2 hold frozen node DBs gives its record hook (the `hwf` argument of an adoption
  rule such as `Rec.heap_adopt`).
* **`SlArr`**, **`NdbBuildSpec`**, **`StateInitSpec`**: the producer obligations (§3 of
  `witg-design.md`).
-/

namespace InitECandidate.Solver.Wit
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-! ## Record cells are never written by a summarized call -/

/-- A record cell is a `prot` slot of whichever `Γ` slot it is. -/
theorem rcell_slot {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {a : BitVec 64} (h : RCell Γ a) {o : Obj} (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k)
    (ha : a = o.cell k) : (guestC.ty o.ty).slot k = .prot := by
  obtain ⟨x, hx, -, -, k0, hk0, hpr, hxa, -⟩ := h
  obtain ⟨e1, -⟩ := cell_toNat hord hL ho hk
  obtain ⟨e0, -⟩ := cell_toNat hord hL hx hk0
  unfold Obj.HasSlot at hk hk0
  have hxh : x.hi = x.lo + x.size := rfl
  have hoh : o.hi = o.lo + o.size := rfl
  have hxo : x = o := gam_eq (gamOK_of_layout hL) hx ho (n := a.toNat)
    (by rw [hxa, e0]; omega) (by rw [hxa, e0, hxh]; omega)
    (by rw [ha, e1]; omega) (by rw [ha, e1, hoh]; omega)
  subst hxo
  have hkk : k = k0 := by
    have h1 : (x.cell k).toNat = (x.cell k0).toNat := by rw [← ha, ← hxa]
    rw [e1, e0] at h1
    omega
  subst hkk
  exact hpr

theorem rcell_not_wcell {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {a : BitVec 64} (h : RCell Γ a) : ¬ WCell guestC Γ a := by
  rintro ⟨o, ho, k, hk, hne, ha⟩
  exact hne (rcell_slot hord hL h ho hk ha)

theorem rcell_not_scell {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {a : BitVec 64} (h : RCell Γ a) : ¬ SCell guestC Γ a := by
  rintro ⟨o, ho, k, hk, hsc, ha⟩
  rw [rcell_slot hord hL h ho hk ha] at hsc
  cases hsc

theorem rcell_inObj {Γ : Gam} {a : BitVec 64} (h : RCell Γ a) : InObj Γ a.toNat := by
  obtain ⟨x, hx, -, -, -, -, -, h1, h2⟩ := rcell_obj h
  exact ⟨x, hx, h1, h2⟩

theorem rcell_alloc {p : Ptrs} {Γ : Gam} (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : RCell Γ a) : p.Allocated a.toNat := by
  obtain ⟨x, hx, hreg, h1, h2⟩ := rcell_in h
  have hl := (hL.1 x hx).2.2.2.2
  rw [hreg] at hl
  simp only [Region.Live] at hl
  left
  unfold Obj.hi Obj.lo at *
  omega

theorem argW_some {vs : List (ValueHOL 64)} {i : Nat} {w : BitVec 64} (h : argW vs i = some w) :
    ∃ v, vs[i]? = some v ∧ wordOf v = some w := by
  unfold argW at h
  split at h
  · rename_i v hv; exact ⟨v, hv, h⟩
  · cases h

/-- A record cell is in no buffer argument. -/
theorem rcell_not_argCells {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ)
    {ps : List PT} {vs : List (ValueHOL 64)} (hA : ArgsOK guestC Γ p ps vs) {a : BitVec 64}
    (h : RCell Γ a) : ¬ ArgCells ps vs a := by
  rintro ⟨i, w, hw, hc⟩
  obtain ⟨v, hv, hwv⟩ := argW_some hw
  have hin := rcell_inObj h
  rcases hc with ⟨n, hpi, hov⟩ | ⟨j, c, d, x, hpi, hx, hov⟩
  · obtain ⟨w', hw', hb⟩ := (hA.2 i _ v hpi hv : ArgOK guestC Γ p vs (.buf n) v)
    rw [hwv] at hw'
    cases hw'
    rcases hb a hov with hs | ⟨hn, -⟩
    · exact rcell_not_scell hord hL h hs
    · exact hn hin
  · obtain ⟨w', x', hw', hx', hb⟩ := (hA.2 i _ v hpi hv : ArgOK guestC Γ p vs (.bufArg j c d) v)
    rw [hwv] at hw'
    cases hw'
    rw [hx] at hx'
    cases hx'
    rcases hb a hov with hs | ⟨hn, -⟩
    · exact rcell_not_scell hord hL h hs
    · exact hn hin

/-- **A summarized call keeps every record cell** (unless its extra write set says so). -/
theorem rcell_keep {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg PW Γ s vs r t Γ' p p') (hL : Layout guestC p Γ) (hord : p.Ordered)
    (hA : ArgsOK guestC Γ p sg.params vs) (hPW : ∀ a, RCell Γ a → ¬ PW a) {a : BitVec 64}
    (ha : RCell Γ a) : t.memory a = s.memory a := by
  obtain ⟨-, -, -, -, -, -, hmod, -⟩ := hc
  apply hmod
  rintro (h | h | h | h)
  · exact rcell_not_wcell hord hL ha h
  · exact rcell_not_argCells hord hL hA ha h
  · exact h (rcell_alloc hL ha)
  · exact hPW a ha h

/-- **A frozen node DB survives a summarized call.** -/
theorem ndbR_sumCore {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg PW Γ s vs r t Γ' p p') (hG : G guestC H Γ s)
    (hA : ArgsOK guestC Γ p sg.params vs) (hPW : ∀ a, RCell Γ a → ¬ PW a) {T : BitVec 64}
    (h : NdbR Γ s.memory T) : NdbR Γ' t.memory T := by
  obtain ⟨p0, hp0, hord, hL, -⟩ := hG
  have e : p0 = p := Option.some.inj (hp0.symm.trans hc.1)
  subst e
  have hN := (ndb_frame h fun a ha => rcell_keep hc hL hord hA hPW (ndbFp_rcell h ha)).1
  exact ndbR_ext hc.2.2.2.1 hN

/-- The plain-summary case (`PW` is `ProtCell ∧ False`). -/
theorem ndbR_summ {H : Hooks σ} {sg : Sig} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ False) Γ s vs r t Γ' p p')
    (hG : G guestC H Γ s) (hA : ArgsOK guestC Γ p sg.params vs) {T : BitVec 64}
    (h : NdbR Γ s.memory T) : NdbR Γ' t.memory T :=
  ndbR_sumCore hc hG hA (fun _ _ h => h.2) h

/-! ## Slice arrays -/

/-- **A slice array**: `n` slice records at `arr + 16 i` (what `nodedb_build` consumes; the
`SI_STATE` / `SI_CODES` arrays of the stateless input). -/
def SlArr (Γ : Gam) (m : Mem) (arr : BitVec 64) (n : Nat) : Prop :=
  ∀ i, i < n → SlRec Γ m (arr + BitVec.ofNat 64 (16 * i))

theorem slArr_sumCore {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg PW Γ s vs r t Γ' p p') (hG : G guestC H Γ s)
    (hA : ArgsOK guestC Γ p sg.params vs) (hPW : ∀ a, RCell Γ a → ¬ PW a) {arr : BitVec 64}
    {n : Nat} (h : SlArr Γ s.memory arr n) : SlArr Γ' t.memory arr n := by
  obtain ⟨p0, hp0, hord, hL, -⟩ := hG
  have e : p0 = p := Option.some.inj (hp0.symm.trans hc.1)
  subst e
  intro i hi
  have hs := h i hi
  obtain ⟨c0, c8⟩ := slRec_cells hs
  exact slRec_ext hc.2.2.2.1
    (slRec_congr hs (rcell_keep hc hL hord hA hPW c0) (rcell_keep hc hL hord hA hPW c8))

/-! ## Adopting the witness-state block -/

theorem ext_snoc' (Γ : Gam) (x : Obj) : Ext Γ (Γ ++ [x]) :=
  fun o ho => ⟨o, List.mem_append_left _ ho, rfl, rfl, le_rfl⟩

/-- The `ws` block, adopted as a `tWSR` object, has the record invariant once slots 0 and 2
hold frozen node DBs. -/
theorem wsRW_snoc {Γ : Gam} {m : Mem} {w : BitVec 64} (hlo : w.toNat + 40 ≤ heapEnd)
    (hN : NdbR Γ m (rd m w)) (hC : NdbR Γ m (rd m (w + BitVec.ofNat 64 16))) :
    WsRW (Γ ++ [(⟨w, tWSR, 40⟩ : Obj)]) m ⟨w, tWSR, 40⟩ := by
  have e0 : txF m (⟨w, tWSR, 40⟩ : Obj) 0 = rd m w := txF_cell0 m _
  have e2 : txF m (⟨w, tWSR, 40⟩ : Obj) 2 = rd m (w + BitVec.ofNat 64 16) := rfl
  refine ⟨le_rfl, hlo, ?_, ?_⟩
  · rw [e0]; exact ndbR_ext (ext_snoc' Γ _) hN
  · rw [e2]; exact ndbR_ext (ext_snoc' Γ _) hC

/-- **The adoption hook**: the `hwf` obligation of adopting `ws` (e.g. in `Rec.heap_adopt`). -/
theorem wf_ws_snoc {Γ : Gam} {s : State σ} {w : BitVec 64} {p : Ptrs}
    (hL : Layout guestC p (Γ ++ [(⟨w, tWSR, 40⟩ : Obj)])) (hlo : w.toNat + 40 ≤ heapEnd)
    (hN : NdbR Γ s.memory (rd s.memory w))
    (hC : NdbR Γ s.memory (rd s.memory (w + BitVec.ofNat 64 16))) :
    (guestHooksR (σ := σ)).wf (Γ ++ [(⟨w, tWSR, 40⟩ : Obj)]) s ⟨w, tWSR, 40⟩ :=
  wf_of_wsRW rfl (List.mem_append_right _ (List.mem_singleton_self _)) (gamOK_of_layout hL)
    (wsRW_snoc hlo hN hC)

/-! ## The producer obligations -/

/-- `nodedb_build`'s signature (as in `Sigs3`, without its result kind). -/
def ndbSig : Sig := ⟨[.any, .any], [], [], true⟩

/-- **`nodedb_build`'s hand-summary obligation**: from a slice array of `n` records it returns a
frozen node DB. (Proof plan: `htab_new(32, cap)`, then `n` times `keccak256`, `htab_set(t, h,
arr + 16 i)`; a loop invariant "`TableWF`, every leaf value is `arr + 16 j` with `j < i`"
(`Spec.Inv.ins_leafval`); at the end, retype ("freeze") the table's fresh objects (header and
`tOwn` arrays) to an untagged all-`prot` record type, which keeps `G` because no other hook
refers to them.) -/
def NdbBuildSpec (σ : Type) (X : Ctx 64) : Prop :=
  SumSpec σ X guestC guestHooksR (nm "nodedb_build") ndbSig
    (fun vs s Γ => ∃ arr n : BitVec 64, vs = [.val (.word arr), .val (.word n)] ∧
      SlArr Γ s.memory arr n.toNat)
    (fun _ _ _ _ => False)
    (fun _ _ _ r t Γ' => ∀ v, r = .returned v → ∃ T, v = .val (.word T) ∧ NdbR Γ' t.memory T)

/-- `state_init`'s signature (as in `Sigs3`). -/
def siSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

/-- **`state_init`'s hand-summary obligation** (the part witg needs): from two frozen node DBs it
leaves `ws` pointing at a `tWSR` object of `Γ'` (whose record hook is then `WsRW`, by `G`). -/
def StateInitSpec (σ : Type) (X : Ctx 64) : Prop :=
  SumSpec σ X guestC guestHooksR (nm "state_init") siSig
    (fun vs s Γ => ∃ db rt cd : BitVec 64, vs = [.val (.word db), .val (.word rt), .val (.word cd)] ∧
      NdbR Γ s.memory db ∧ NdbR Γ s.memory cd)
    (fun _ _ _ _ => False)
    (fun _ _ _ r t Γ' => ∀ v, r = .returned v →
      ∃ w, gword t (nm "ws") = some w ∧ Fits Γ' (.nptr tWSR) w)

/-- **What the producers give**: after `state_init`, `WsW` holds (with `G` from its summary). -/
theorem wsW_after_state_init {Γ' : Gam} {t : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ' t)
    {w : BitVec 64} (hw : gword t (nm "ws") = some w) (hf : Fits Γ' (.nptr tWSR) w) :
    Band.WsW t :=
  wsW_of_fits hG hw hf

end InitECandidate.Solver.Wit

#print axioms InitECandidate.Solver.Wit.rcell_keep
#print axioms InitECandidate.Solver.Wit.ndbR_sumCore
#print axioms InitECandidate.Solver.Wit.ndbR_summ
#print axioms InitECandidate.Solver.Wit.slArr_sumCore
#print axioms InitECandidate.Solver.Wit.wsRW_snoc
#print axioms InitECandidate.Solver.Wit.wf_ws_snoc
#print axioms InitECandidate.Solver.Wit.wsW_after_state_init
