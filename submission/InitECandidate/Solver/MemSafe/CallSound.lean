import InitECandidate.Solver.MemSafe.StoreSound

/-!
# Soundness of the call rule: arguments, footprint, transport (M1)

* `evs_aev`: argument values satisfy their abstractions.
* `bufChk_sound`: an argument accepted as a writable buffer is `BufOK` and its cells lie in
  the activation's footprint.
* `argsChk_sound`: accepted arguments fit the callee's parameter types (`ArgsOK`), and the
  callee's argument cells lie in the caller's footprint.
* `heap_after_call`, `ig_after_call`: the caller's invariant after the callee's `SumCore`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem evs_aev {C : Cfg} {H : Hooks σ} {Γ : Gam} {Θ : List (BitVec 64 × Nat)} {A : AEnv}
    {s : State σ} (hG : G C H Γ s) (hl : LocalsOK A Γ Θ s)
    (hns : ∀ a, s.memaddrs a → heapBase ≤ a.toNat) :
    ∀ (args : List (ExpHOL 64)) (vs : List (ValueHOL 64)), evs s args = some vs →
      vs.length = args.length ∧ ∀ i (hi : i < vs.length) (ha : i < args.length),
        VOk Γ Θ (aev C A chkFuel args[i]) vs[i]
  | [], vs, h => by
      simp only [evs, evalListHOLExact, Option.some.injEq] at h
      subst h
      exact ⟨rfl, fun i hi => absurd hi (by simp)⟩
  | e :: es, vs, h => by
      obtain ⟨v, vs', rfl, hv, hvs⟩ := evs_cons_inv h
      obtain ⟨hlen, hall⟩ := evs_aev hG hl hns es vs' hvs
      refine ⟨by simp [hlen], fun i hi ha => ?_⟩
      cases i with
      | zero => exact aev_sound hG hl hns chkFuel e v hv
      | succ i => exact hall i (by simp at hi; omega) (by simp at ha; omega)

/-- A writable abstract buffer argument. -/
theorem bufChk_sound {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) {A : AEnv}
    {Γ : Gam} {p : Ptrs} {Θ : List (BitVec 64 × Nat)} {s : State σ} (hh : Heap a Γ p s)
    (ht : TempsOK a A Γ p Θ) {av : AV} {n : Nat} (hc : bufChk E A av n = true)
    {w : BitVec 64} (hw : AVok Γ Θ av w) :
    BufOK a.C Γ p w.toNat n ∧ ∀ x, Overlap w.toNat n x → a.Foot x := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  have hpp : p1 = p := by rw [hh.2.1] at hp1; exact (Option.some.inj hp1).symm
  subst hpp
  unfold bufChk at hc
  split at hc
  · -- a temporary
    rename_i k o
    split at hc
    · rename_i td hk
      have hle := Nat.le_of_ble_eq_true hc
      obtain ⟨q, hq, hbuf, hprov⟩ := ht.2 k td hk
      obtain ⟨q', n', hq', rfl⟩ := hw
      rw [hq] at hq'
      simp only [Option.some.injEq, Prod.mk.injEq] at hq'
      obtain ⟨rfl, rfl⟩ := hq'
      have hnw : (q + BitVec.ofNat 64 o).toNat = q.toNat + o := by
        by_cases hz : td.size = 0
        · have : o = 0 := by omega
          subst this; simp
        · have hbd := bufOK_bound hord hL q.isLt hbuf (by omega)
          have hse : scratchEnd + 8 < 2 ^ 64 := by decide
          rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : o < 2 ^ 64),
            Nat.mod_eq_of_lt (by omega)]
      have hsub : ∀ x, Overlap (q + BitVec.ofNat 64 o).toNat n x → Overlap q.toNat td.size x := by
        intro x ⟨h1, h2, h3⟩
        rw [hnw] at h2 h3
        exact ⟨h1, by omega, by omega⟩
      refine ⟨fun x hx => hbuf x (hsub x hx), fun x hx => ?_⟩
      have hx' := hsub x hx
      split at hprov
      · exact Or.inr (Or.inr (Or.inl (hprov.2 x hx')))
      · exact Or.inr (Or.inl (hprov x hx'))
      · exact absurd hx' (win_no_overlap hprov)
    · cases hc
  · -- a typed object
    rename_i t o
    simp only [Bool.and_eq_true] at hc
    obtain ⟨hle, hrun⟩ := hc
    have hle' := Nat.le_of_ble_eq_true hle
    obtain ⟨ob, hob, hty, rfl⟩ := hw
    rw [hE] at hle' hrun
    have hsz := (hL.1 ob hob).2.2.2.1
    have hal := (hL.1 ob hob).1
    rw [hty] at hsz
    have hbig := (cell_toNat hord hL hob (k := 0) (by
      unfold Obj.HasSlot; have := (hL.1 ob hob).2.1; have := (hL.1 ob hob).2.2.1; omega)).2
    have hse : scratchEnd < 2 ^ 64 := by decide
    have ho : o ≤ ob.size := by omega
    have hnw : (ob.base + BitVec.ofNat 64 o).toNat = ob.base.toNat + o := by
      unfold Obj.lo at hbig
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : o < 2 ^ 64),
        Nat.mod_eq_of_lt (by omega)]
    -- every overlapped cell is a scalar slot cell of `ob`
    have hcell : ∀ x, Overlap (ob.base + BitVec.ofNat 64 o).toNat n x →
        SCell a.C Γ x := by
      intro x ⟨h1, h2, h3⟩
      rw [hnw] at h2 h3
      unfold Obj.lo at hal
      have hal0 := hal
      set k := (x.toNat - ob.base.toNat) / 8 with hk
      have hxk : x.toNat = ob.base.toNat + 8 * k := by omega
      have hko : o / 8 ≤ k := by omega
      have hjm : k - o / 8 < (o % 8 + n + 7) / 8 := by omega
      refine ⟨ob, hob, k, ?_, ?_, ?_⟩
      · unfold Obj.HasSlot; omega
      · rw [hty]
        unfold scalarRun at hrun
        simp only [List.all_eq_true, List.mem_range, beq_iff_eq] at hrun
        have := hrun (k - o / 8) hjm
        rwa [show o / 8 + (k - o / 8) = k by omega] at this
      · apply BitVec.eq_of_toNat_eq
        rw [hxk]
        unfold Obj.cell
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : 8 * k < 2 ^ 64),
          Nat.mod_eq_of_lt (by unfold Obj.lo at hbig; omega)]
    refine ⟨fun x hx => Or.inl (hcell x hx), fun x hx => ?_⟩
    obtain ⟨o', ho', k', hk', hsc, he⟩ := hcell x hx
    exact foot_of_wcell hh ha.hord0 ha.hsz0 ⟨o', ho', k', hk', by rw [hsc]; simp, he⟩
  · cases hc

theorem bufChk_word {E : CEnv} {A : AEnv} {av : AV} {n : Nat} (h : bufChk E A av n = true) :
    av.isWord = true := by
  cases av <;> simp [bufChk] at h <;> rfl

theorem zip_all {α β : Type} {f : α × β → Bool} {l : List α} {m : List β}
    (h : (l.zip m).all f = true) {i : Nat} (hi : i < l.length) (hm : i < m.length) :
    f (l[i], m[i]) = true := by
  have hz : i < (l.zip m).length := by simp; omega
  have := List.all_eq_true.mp h (l.zip m)[i] (List.getElem_mem hz)
  simpa using this

/-- **Accepted arguments.** -/
theorem argsChk_sound {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C) {A : AEnv}
    {Γ : Gam} {p : Ptrs} {Θ : List (BitVec 64 × Nat)} {s : State σ} (hh : Heap a Γ p s)
    (ht : TempsOK a A Γ p Θ) {ps : List PT} {args : List (ExpHOL 64)}
    {vs : List (ValueHOL 64)} (hc : argsChk E A ps (args.map (aev E.C A chkFuel)) = true)
    (hlen : vs.length = args.length)
    (hvok : ∀ i (hi : i < vs.length) (ha : i < args.length),
      VOk Γ Θ (aev a.C A chkFuel args[i]) vs[i]) :
    ArgsOK a.C Γ p ps vs ∧ ∀ x, ArgCells ps vs x → a.Foot x := by
  unfold argsChk at hc
  simp only [Bool.and_eq_true, beq_iff_eq, List.length_map] at hc
  obtain ⟨hpl, hall⟩ := hc
  -- the facts for argument `i`
  have hone : ∀ i (hi : i < ps.length),
      ptChk E A (args.map (aev E.C A chkFuel)) ps[i] (aev E.C A chkFuel args[i]) = true ∧
        VOk Γ Θ (aev E.C A chkFuel args[i]) vs[i] := by
    intro i hi
    have h1 := zip_all hall hi (by simp; omega)
    simp only [List.getElem_map] at h1
    exact ⟨h1, by rw [hE]; exact hvok i (by omega) (by omega)⟩
  have hbuf : ∀ i (hi : i < ps.length) n (hb : bufChk E A (aev E.C A chkFuel args[i]) n = true),
      ∃ w, argW vs i = some w ∧ BufOK a.C Γ p w.toNat n ∧
        ∀ x, Overlap w.toNat n x → a.Foot x := by
    intro i hi n hb
    obtain ⟨-, hv⟩ := hone i hi
    obtain ⟨w, hvw, hw⟩ := vok_word (bufChk_word hb) hv
    have hvi : i < vs.length := by omega
    refine ⟨w, by unfold argW; rw [List.getElem?_eq_getElem hvi, hvw]; rfl, ?_⟩
    exact bufChk_sound ha hE hh ht hb hw
  -- `bufArg` sizes
  have hsize : ∀ i (hi : i < ps.length) j c d,
      ptChk E A (args.map (aev E.C A chkFuel)) (.bufArg j c d) (aev E.C A chkFuel args[i]) = true →
      ∃ x, argW vs j = some x ∧ bufChk E A (aev E.C A chkFuel args[i]) (c * x.toNat + d) = true := by
    intro i hi j c d h
    simp only [ptChk] at h
    split at h
    · rename_i x hx
      simp only [List.getElem?_map] at hx
      cases hxa : args[j]? with
      | none => rw [hxa] at hx; cases hx
      | some ej =>
          rw [hxa] at hx
          simp only [Option.map_some, Option.some.injEq] at hx
          have hj : j < args.length := (List.getElem?_eq_some_iff.mp hxa).1
          have hej : args[j] = ej := (List.getElem?_eq_some_iff.mp hxa).2
          have hvj := hvok j (by omega) hj
          rw [hej, ← hE, hx] at hvj
          obtain ⟨w, hvw, hw⟩ := hvj
          refine ⟨x, ?_, h⟩
          unfold argW
          rw [List.getElem?_eq_getElem (by omega : j < vs.length), hvw]
          simp only [AVok] at hw
          subst hw; rfl
    · cases h
  refine ⟨⟨by omega, fun i pt v hpt hv => ?_⟩, fun x hx => ?_⟩
  · have hi : i < ps.length := (List.getElem?_eq_some_iff.mp hpt).1
    have hpi : ps[i] = pt := (List.getElem?_eq_some_iff.mp hpt).2
    have hvi : vs[i] = v := (List.getElem?_eq_some_iff.mp hv).2
    obtain ⟨hpc, hvk⟩ := hone i hi
    rw [hpi] at hpc
    rw [hvi] at hvk
    cases pt with
    | any => trivial
    | fits k =>
        simp only [ptChk, Bool.and_eq_true] at hpc
        obtain ⟨w, rfl, hw⟩ := vok_word hpc.1 hvk
        exact ⟨w, rfl, (fits_of_fitsAV hpc.2 hw).2⟩
    | buf n =>
        obtain ⟨w, hw, hb, -⟩ := hbuf i hi n hpc
        refine ⟨w, ?_, hb⟩
        unfold argW at hw; rw [hv] at hw; exact hw
    | bufArg j c d =>
        obtain ⟨x, hx, hb⟩ := hsize i hi j c d hpc
        obtain ⟨w, hw, hbo, -⟩ := hbuf i hi _ hb
        refine ⟨w, x, ?_, hx, hbo⟩
        unfold argW at hw; rw [hv] at hw; exact hw
    | eq c =>
        simp only [ptChk, beq_iff_eq] at hpc
        rw [hpc] at hvk
        obtain ⟨w, rfl, hw⟩ := hvk
        simp only [AVok] at hw
        subst hw; rfl
  · obtain ⟨i, w, hw, hcase⟩ := hx
    have hvi : i < vs.length := by
      unfold argW at hw
      cases h : vs[i]? with
      | none => rw [h] at hw; cases hw
      | some _ => exact (List.getElem?_eq_some_iff.mp h).1
    have hi : i < ps.length := by omega
    obtain ⟨hpc, -⟩ := hone i hi
    rcases hcase with ⟨n, hpn, hov⟩ | ⟨j, c, d, x', hpn, hx', hov⟩
    · have hpi : ps[i] = .buf n := (List.getElem?_eq_some_iff.mp hpn).2
      rw [hpi] at hpc
      obtain ⟨w', hw', -, hf⟩ := hbuf i hi n hpc
      rw [hw] at hw'; cases hw'
      exact hf x hov
    · have hpi : ps[i] = .bufArg j c d := (List.getElem?_eq_some_iff.mp hpn).2
      rw [hpi] at hpc
      obtain ⟨x'', hx'', hb⟩ := hsize i hi j c d hpc
      rw [hx'] at hx''; cases hx''
      obtain ⟨w', hw', -, hf⟩ := hbuf i hi _ hb
      rw [hw] at hw'; cases hw'
      exact hf x hov

/-- No new cells, twice. -/
theorem newFresh_nogrow {Γ0 Γ Γ' : Gam} {p0 q : Ptrs} (h0 : NewFresh Γ0 Γ p0 p0)
    (h : NewFresh Γ Γ' q q) : NewFresh Γ0 Γ' p0 p0 := by
  intro o ho a hlo hhi
  rcases h o ho a hlo hhi with ⟨o1, ho1, hb1, ht1, hlo1, hhi1⟩ | hf
  · rcases h0 o1 ho1 a hlo1 hhi1 with ⟨o0, ho0, hb0, ht0, hlo0, hhi0⟩ | hf0
    · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hlo0, hhi0⟩
    · exact Or.inr hf0
  · exfalso; unfold Fresh at hf; omega

theorem upg_ty (C : Cfg) (cs : List Cap) : (upg C cs).ty = C.ty := rfl

theorem upg_PG (C : Cfg) (cs : List Cap) : (upg C cs).PG = C.PG := rfl

/-- The capability objects persist: the globals are unchanged since entry and `Γ` extends the
entry typing. -/
theorem req_of {a : Act σ} (ha : ActOK a X) {Γ : Gam} (he : Ext a.Γ0 Γ) {t : State σ}
    (hg : ∀ c ∈ a.caps, c.g ≠ anyG → t.globals.lookup c.g = a.s0.globals.lookup c.g) :
    ReqOK a.caps t Γ := by
  intro c hc hga
  obtain ⟨e0, he0, ht0, hb0⟩ := ha.hreq c hc hga
  obtain ⟨e, hee, hbe, hte, -⟩ := he e0 he0
  refine ⟨e, hee, hte.trans ht0, ?_⟩
  unfold gword at hb0 ⊢
  rw [hg c hc hga, hbe]
  exact hb0

/-- The capability globals are unchanged in an activation. -/
theorem caps_kept {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) :
    ∀ c ∈ a.caps, c.g ≠ anyG → s.globals.lookup c.g = a.s0.globals.lookup c.g := by
  intro c hc hga
  obtain ⟨h1, h2, -, -⟩ := capsOK_spec ha.hcaps hc hga
  exact hh.2.2.2.2.2.2.1 c.g (by rw [ha.hupg]; exact h1) h2

theorem req_now {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) : ReqOK a.caps s Γ :=
  req_of ha hh.2.2.2.1 (caps_kept ha hh)

/-- A capability cell of a callee (capabilities `cs` included in the caller's) is in the
caller's footprint. -/
theorem foot_of_cap {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {cs : List Cap} (hcs : capSub cs a.caps = true) {s' : State σ}
    (hg' : s'.globals = s.globals) {x : BitVec 64} (hx : ProtCell a.Cb Γ x ∧ CapPW cs s' Γ x) :
    a.Foot x := by
  obtain ⟨⟨o, ho, k', hk', hpk, hxo⟩, c, hc, hcx⟩ := hx
  obtain ⟨c', hc', hg, htc, hks, hall⟩ := capSub_spec hcs hc
  have hmin := capsOK_ks ha.hcaps hc'
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  have hpp : p1 = p := by rw [hh.2.1] at hp1; exact (Option.some.inj hp1).symm
  subst hpp
  rcases hcx with ⟨e, ⟨he, het, heb⟩, k, hk, hxe⟩ | ⟨hca, e, he, hety, k, hke, hxe⟩
  rotate_left
  · -- an all-cells capability (rev. 6): the cell is an old cell of the type range, or fresh
    obtain ⟨hoe, hkk⟩ := cell_inj hord hL ho he hk' hke (hxo.symm.trans hxe)
    subst hoe hkk
    obtain ⟨hx1, -⟩ := cell_toNat hord hL he hke
    rcases hh.2.2.2.2.1 o he x (by rw [hxe, hx1]; unfold Obj.lo; omega)
        (by rw [hxe, hx1]; unfold Obj.lo Obj.hi Obj.HasSlot at *; omega) with
      ⟨e0, he0, hb0, ht0, hl0, hh0⟩ | hfr
    · have hs0 := ha.hsz0 e0 he0
      have hk0 : e0.HasSlot k' := by
        unfold Obj.HasSlot
        rw [hxe, hx1] at hh0
        unfold Obj.lo Obj.hi at hh0
        rw [hb0] at hh0
        unfold Obj.lo at hl0
        omega
      have hxc : x = e0.cell k' := by rw [hxe]; unfold Obj.cell; rw [hb0]
      have hprot : ProtCell a.C a.Γ0 x :=
        ⟨e0, he0, k', hk0, by rw [ha.hupg, upg_ty, ht0]; exact hpk, hxc⟩
      have hcap : CapPW a.caps a.s0 a.Γ0 x :=
        ⟨c', hc', Or.inr ⟨hall hca, e0, he0, by unfold AllTy at *; rw [ht0, htc]; exact hety,
          k', hk0, hxc⟩⟩
      exact Or.inr (Or.inr (Or.inr ⟨hprot, hcap⟩))
    · refine Or.inr (Or.inr (Or.inl ?_))
      have h0 := ha.hord0
      unfold Ptrs.Ordered at h0 hord
      unfold Fresh at hfr
      unfold Ptrs.Allocated
      have hm := hh.2.2.1
      unfold Ptrs.Mono at hm
      omega
  by_cases hw : c.g = anyG
  · -- a type capability: the cell is an old capability cell or fresh
    have hk8 := hmin k (hks k hk)
    have hsz := (hL.1 e he).2.2.2.1
    rw [ha.hupg, upg_ty, het, ← htc] at hsz
    have hke : e.HasSlot k := by unfold Obj.HasSlot; omega
    obtain ⟨hoe, hkk⟩ := cell_inj hord hL ho he hk' hke (hxo.symm.trans hxe)
    have hpe : (a.Cb.ty c'.t).slot k = .prot := by
      rw [htc, ← het, ← hoe, ← hkk]
      exact hpk
    obtain ⟨hx1, -⟩ := cell_toNat hord hL he hke
    have hal := (hL.1 e he).2.1
    rcases hh.2.2.2.2.1 e he x (by rw [hxe, hx1]; unfold Obj.lo; omega)
        (by rw [hxe, hx1]; unfold Obj.lo Obj.hi Obj.HasSlot at *; omega) with
      ⟨e0, he0, hb0, ht0, hl0, hh0⟩ | hfr
    · have hs0 := ha.hsz0 e0 he0
      have hk0 : e0.HasSlot k := by
        unfold Obj.HasSlot
        rw [hxe, hx1] at hh0
        unfold Obj.lo Obj.hi at hh0
        rw [hb0] at hh0
        unfold Obj.lo at hl0
        omega
      have hxc : x = e0.cell k := by rw [hxe]; unfold Obj.cell; rw [hb0]
      have hprot : ProtCell a.C a.Γ0 x :=
        ⟨e0, he0, k, hk0, by rw [ha.hupg, upg_ty, ht0, het, ← htc]; exact hpe, hxc⟩
      have hcap : CapPW a.caps a.s0 a.Γ0 x :=
        ⟨c', hc', Or.inl ⟨e0, ⟨he0, by rw [ht0, het, htc], Or.inl (hg.trans hw)⟩, k, hks k hk, hxc⟩⟩
      exact Or.inr (Or.inr (Or.inr ⟨hprot, hcap⟩))
    · refine Or.inr (Or.inr (Or.inl ?_))
      have h0 := ha.hord0
      unfold Ptrs.Ordered at h0 hord
      unfold Fresh at hfr
      unfold Ptrs.Allocated
      have hm := hh.2.2.1
      unfold Ptrs.Mono at hm
      omega
  have heb' : gword s' c.g = some e.base := by
    rcases heb with h | h
    · exact absurd h hw
    · exact h
  have hga' : c'.g ≠ anyG := by rw [hg]; exact hw
  obtain ⟨e0, he0, het0, heb0⟩ := ha.hreq c' hc' hga'
  have hgs : gword s' c.g = gword a.s0 c'.g := by
    unfold gword; rw [hg', ← hg, caps_kept ha hh c' hc' hga']
  have hbase : e.base = e0.base := by
    rw [heb', heb0] at hgs; exact (Option.some.inj hgs)
  -- slot `k` of the capability type exists and is `prot`
  have hk8 := hmin k (hks k hk)
  have hsz := (hL.1 e he).2.2.2.1
  rw [ha.hupg, upg_ty, het, ← htc] at hsz
  have hke : e.HasSlot k := by unfold Obj.HasSlot; omega
  obtain ⟨hoe, hkk⟩ := cell_inj hord hL ho he hk' hke (hxo.symm.trans hxe)
  have hpe : (a.Cb.ty c'.t).slot k = .prot := by
    rw [htc, ← het, ← hoe, ← hkk]; exact hpk
  have hsz0 := ha.hmin0 e0 he0
  rw [ha.hupg, upg_ty, het0] at hsz0
  have hk0 : e0.HasSlot k := by unfold Obj.HasSlot; omega
  have hxc : x = e0.cell k := by rw [hxe]; unfold Obj.cell; rw [hbase]
  have hprot : ProtCell a.C a.Γ0 x :=
    ⟨e0, he0, k, hk0, by rw [ha.hupg, upg_ty, het0]; exact hpe, hxc⟩
  have hcap : CapPW a.caps a.s0 a.Γ0 x :=
    ⟨c', hc', Or.inl ⟨e0, ⟨he0, het0, Or.inr heb0⟩, k, hks k hk, hxc⟩⟩
  exact Or.inr (Or.inr (Or.inr ⟨hprot, hcap⟩))

/-- The caller's heap part after a call that ended with the callee's `SumCore`. -/
theorem heap_after_call {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {s' : State σ} (hg' : s'.globals = s.globals)
    (hm' : s'.memory = s.memory) {sg' : Sig} {cs : List Cap} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {st : State σ} {Γ' : Gam} {q q' : Ptrs}
    (core : SumCore a.Cb a.H sg' (fun x => ProtCell a.Cb Γ x ∧ CapPW cs s' Γ x) Γ s' vs r st
      Γ' q q')
    (hfoot : ∀ x, ArgCells sg'.params vs x → a.Foot x) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) (hcs : capSub cs a.caps = true) :
    Heap a Γ' q' st := by
  have hh0 := hh
  obtain ⟨hpq, hpq', hmono, hext, hnf, hG', hmod, hpg, hng', -⟩ := core
  obtain ⟨hG, hps, hm0, he0, hnf0, hmod0, hpg0, hng0⟩ := hh
  have hqp : q = p := by
    have : ptrsOf s' = ptrsOf s := by unfold ptrsOf gword; rw [hg']
    rw [this, hps] at hpq; exact (Option.some.inj hpq).symm
  subst hqp
  obtain ⟨p1, hp1, hord, -⟩ := id hG
  rw [hps] at hp1; cases hp1
  have hpgs : ∀ g ∈ a.C.PG, g ∉ a.sg.gw → st.globals.lookup g = a.s0.globals.lookup g := by
    intro g hg hng
    rw [hpg g (by rw [ha.hupg] at hg; exact hg) (fun h => hng (hgw g h)), hg']
    exact hpg0 g hg hng
  have hreq : ReqOK a.caps st Γ' := req_of ha (ext_trans he0 hext) fun c hc hga => by
    obtain ⟨h1, h2, -, -⟩ := capsOK_spec ha.hcaps hc hga
    exact hpgs c.g (by rw [ha.hupg]; exact h1) h2
  have hGu : G a.C a.H Γ' st := by rw [ha.hupg]; exact G_upg hG' hreq
  refine ⟨hGu, hpq', mono_trans hm0 hmono, ext_trans he0 hext,
    newFresh_trans hm0 hmono hnf0 hnf, fun x hx => ?_, hpgs, fun hf => ?_⟩
  · have h1 : st.memory x = s'.memory x := by
      refine hmod x (fun hc => hx ?_)
      rcases hc with h | h | h | h
      · exact foot_of_wcell hh0 ha.hord0 ha.hsz0 (by rw [ha.hupg]; exact h)
      · exact hfoot x h
      · exact Or.inr (Or.inr (Or.inl (fun h0 => h (alloc_mono hm0 h0))))
      · exact foot_of_cap ha hh0 hcs hg' h
    rw [h1, hm']
    exact hmod0 x hx
  · have hf' : sg'.grows = false := by
      cases h : sg'.grows
      · rfl
      · rw [hgr h] at hf; cases hf
    exact newFresh_nogrow (hng0 hf) (hng' hf')

end InitECandidate.Solver.MemSafe
