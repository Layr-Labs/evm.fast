import InitECandidate.Solver.MemSafe.Ins.DelCat
import InitECandidate.Solver.MemSafe.Dn.StepAd
import InitECandidate.Solver.MemSafe.Ins.McByte

set_option autoImplicit false

/-!
# `nibbles_concat`'s value spec, and the adoption of its result

`funSpec_nc_val`: a returning `nibbles_concat(A, AL, B, BL)` whose two source slices consist of nibble bytes
and lie below the entry heap pointer returns the fresh `alloc(AL + BL)` block (8-aligned, unallocated at the
entry), whose bytes are all nibbles (`memcpy` copies the sources into it). `nc_adopt` turns it into `NIn`
(`Dn.ctn_adopt` for a block of `M` bytes).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn
open InitECandidate.Solver.Spec.Inv (Cp CellIn MCPre kbyte kbyte_eq kbyte_congr add_ofNat_toNat align_toNat hseq
  hoare_callD_memcpyT DLk)

variable {σ : Type} {X : Ctx 64}

theorem byteAt_of_kbyte {m : MemSafe.Mem} {d : BitVec 64 → Prop} {be : Bool} {a : BitVec 64} {b : UInt8}
    (h : kbyte m d be a = some b) : Hooks.byteAt m be a = b.toNat := by
  rw [kbyte_eq] at h
  split at h
  · injection h with h
    rw [← h]; rfl
  · cases h

theorem nc_bytes {m0 m1 m2 : MemSafe.Mem} {d : BitVec 64 → Prop} {be : Bool} {Out A B AL BL : BitVec 64}
    (hc1 : Cp m0 m1 d be Out A AL.toNat) (hc2 : Cp m1 m2 d be (Out + AL) B BL.toNat)
    (hbf : ∀ Y : BitVec 64, Y.toNat < (Out + AL).toNat → kbyte m2 d be Y = kbyte m1 d be Y)
    (h8 : Out.toNat % 8 = 0) (hlt : Out.toNat + AL.toNat + BL.toNat < 2 ^ 64)
    (hA : ∀ j, j < AL.toNat → Hooks.byteAt m0 be (A + BitVec.ofNat 64 j) < 16)
    (hB : ∀ j, j < BL.toNat → Hooks.byteAt m0 be (B + BitVec.ofNat 64 j) < 16)
    (hBo : BL.toNat ≠ 0 → B.toNat + BL.toNat ≤ Out.toNat) :
    ∀ j, j < AL.toNat + BL.toNat → Hooks.byteAt m2 be (Out + BitVec.ofNat 64 j) < 16 := by
  intro j hj
  have hOA : (Out + AL).toNat = Out.toNat + AL.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  by_cases hjA : j < AL.toNat
  · obtain ⟨e1, s1⟩ := hc1.2 j hjA
    have hOj : (Out + BitVec.ofNat 64 j).toNat < (Out + AL).toNat := by
      rw [add_ofNat_toNat (by omega), hOA]; omega
    have k2 : kbyte m2 d be (Out + BitVec.ofNat 64 j) = kbyte m0 d be (A + BitVec.ofNat 64 j) := by
      rw [hbf _ hOj, e1]
    obtain ⟨b, hb⟩ := Option.isSome_iff_exists.mp s1
    rw [byteAt_of_kbyte (k2.trans hb)]
    have h0 := byteAt_of_kbyte hb
    have := hA j hjA
    omega
  · have hk : j - AL.toNat < BL.toNat := by omega
    obtain ⟨e2, s2⟩ := hc2.2 (j - AL.toNat) hk
    have hBl := hBo (by omega)
    have eq : (Out + AL) + BitVec.ofNat 64 (j - AL.toNat) = Out + BitVec.ofNat 64 j := by
      apply BitVec.eq_of_toNat_eq
      rw [add_ofNat_toNat (by rw [hOA]; omega), add_ofNat_toNat (by omega), hOA]; omega
    have hnc : ¬ CellIn Out AL.toNat (panByteAlignHOL (B + BitVec.ofNat 64 (j - AL.toNat))) := by
      rintro ⟨h1, -⟩
      rw [align_toNat, add_ofNat_toNat (by have := B.isLt; omega)] at h1
      have := Nat.div_mul_le_self (B.toNat + (j - AL.toNat)) 8
      omega
    have k1 : kbyte m1 d be (B + BitVec.ofNat 64 (j - AL.toNat)) =
        kbyte m0 d be (B + BitVec.ofNat 64 (j - AL.toNat)) := kbyte_congr (hc1.1 _ hnc)
    rw [eq] at e2
    obtain ⟨b, hb⟩ := Option.isSome_iff_exists.mp s2
    have hb0 : kbyte m0 d be (B + BitVec.ofNat 64 (j - AL.toNat)) = some b := by rw [← k1]; exact hb
    rw [byteAt_of_kbyte (e2.trans hb)]
    have h0 := byteAt_of_kbyte hb0
    have := hB (j - AL.toNat) hk
    omega

/-- What a returning `nibbles_concat` leaves. -/
def NcRet (s t : State σ) (p p' : Ptrs) (AL BL : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ out : BitVec 64, v = .val (.word out) ∧ ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
    t.be = s.be ∧ out.toNat % 8 = 0 ∧ heapBase ≤ out.toNat ∧
    out.toNat + (AL.toNat + BL.toNat) ≤ p'.hp ∧
    (∀ a : Nat, out.toNat ≤ a → a < out.toNat + (AL.toNat + BL.toNat) → ¬ p.Allocated a) ∧
    ∀ j, j < AL.toNat + BL.toNat → Hooks.byteAt t.memory s.be (out + BitVec.ofNat 64 j) < 16

theorem funSpec_nc_val (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "nibbles_concat") (fun vs s r t => ∀ v, r = .returned v →
      ∀ A AL B BL : BitVec 64, vs = [.val (.word A), .val (.word AL), .val (.word B), .val (.word BL)] →
        AL.toNat + BL.toNat < 2 ^ 60 →
        (∀ j, j < AL.toNat → Hooks.byteAt s.memory s.be (A + BitVec.ofNat 64 j) < 16) →
        (∀ j, j < BL.toNat → Hooks.byteAt s.memory s.be (B + BitVec.ofNat 64 j) < 16) →
        ∀ p : Ptrs, ptrsOf s = some p → p.Ordered →
          (AL ≠ 0 → A.toNat + AL.toNat ≤ p.hp) → (BL ≠ 0 → B.toNat + BL.toNat ≤ p.hp) →
          ∃ p', NcRet s t p p' AL BL v) := by
  intro vs body callee rs hl s hs hloc r hr v hv A AL B BL hvs hsum hA hB p hp hord hAl hBl
  subst hv
  rw [hC] at hl
  obtain ⟨rfl, -, Av, ALv, Bv, BLv, hvs', -, -, -, -, hla, hlal, hlb, hlbl⟩ :=
    Bn.lookupCode_four MptH.code_nibbles_concat (by decide) hl
  rw [hvs] at hvs'
  simp only [List.cons.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs'
  have hLa : s.locals.lookup (nm "a") = some (.val (.word A)) := by rw [hloc]; exact hla
  have hLal : s.locals.lookup (nm "al") = some (.val (.word AL)) := by rw [hloc]; exact hlal
  have hLb : s.locals.lookup (nm "b") = some (.val (.word B)) := by rw [hloc]; exact hlb
  have hLbl : s.locals.lookup (nm "bl") = some (.val (.word BL)) := by rw [hloc]; exact hlbl
  have hgood : Tracked (evaluateHOLFiniteState s MptH.ncBody).1 := by rw [hr]; trivial
  have hsumE : (AL + BL).toNat = AL.toNat + BL.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have hE := Hooks.heapEnd_lt
  have H : Hoare σ X (fun t => t = s) MptH.ncBody (fun r' u => ∀ v, r' = some (.returned v) →
      ∃ p', NcRet s u p p' AL BL v) := by
    unfold MptH.ncBody
    refine Spec.Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hC) (MemSafe.Helpers.funSpec_dom (nm "alloc")))
      (fun r t L h => h) ?_
    intro s1 hs1 hP1 vs1 hvs1 callee1 v1 st hR hst hsh
    symm at hP1
    subst hP1
    rw [evs_cons (ev_add2 (ev_lw hLal) (ev_lw hLbl)) evs_nil] at hvs1
    cases hvs1
    have hpS : ptrsOf (callEntryStateHOLFinite s callee1) = some p :=
      (Band.ptrsOf_glob rfl).trans hp
    obtain ⟨hR1, hdom⟩ := hR
    obtain ⟨hm1, hg1, p', hp', hord', hmono, hret⟩ := hR1 (by simp [Good]) (AL + BL) p rfl hpS hord
    obtain ⟨Out, rfl, h8, hlive, hfree⟩ := hret v1 rfl
    simp only [Region.Live] at hlive
    rw [hsumE] at hlive hfree
    obtain ⟨hlb0, hlb1⟩ := hlive
    have hphp : AL.toNat + BL.toNat ≠ 0 → p.hp ≤ Out.toNat := by
      intro hne
      by_contra hlt
      exact hfree Out.toNat le_rfl (by omega) (Or.inl ⟨hlb0, by omega⟩)
    have hp'e : p'.hp ≤ heapEnd := hord'.2.1
    have hmem1 : st.memory = s.memory := hm1
    have hptr1 : ptrsOf st = some p' := hp'
    set s2 := setVarHOLFinite (nm "out") (.val (.word Out)) { st with locals := s.locals } with hs2
    have hl2 : ∀ x, x ≠ nm "out" → s2.locals.lookup x = s.locals.lookup x :=
      fun x hx => by rw [hs2]; exact lk_set_ne _ _ hx.symm
    have hLo : s2.locals.lookup (nm "out") = some (.val (.word Out)) := lk_set_self _ _ _
    have hptr2 : ptrsOf s2 = some p' := (Band.ptrsOf_glob rfl).trans hptr1
    have hdA : s2.memaddrs = s.memaddrs := hdom.1
    have hdB : s2.be = s.be := hdom.2
    have hmem2 : s2.memory = s.memory := hmem1
    have hOA : AL.toNat ≠ 0 → Out.toNat + AL.toNat ≤ p'.hp := fun h => by omega
    refine hseq (R := fun u => u.locals = s2.locals ∧ u.memaddrs = s.memaddrs ∧ u.be = s.be ∧
      ptrsOf u = some p' ∧ Cp s.memory u.memory s.memaddrs s.be Out A AL.toNat ∧
      (∀ Y : BitVec 64, Y.toNat < Out.toNat → kbyte u.memory s.memaddrs s.be Y = kbyte s.memory s.memaddrs s.be Y)) ?_ ?_
    · refine hoare_callD_memcpyT hC ?_
      intro u hu hP vD vS vN hD hS hN
      have hP' : u = s2 := hP
      subst hP'
      have e1 : vD = .val (.word Out) := Option.some.inj (hD.symm.trans (ev_lw hLo))
      have e2 : vS = .val (.word A) := Option.some.inj (hS.symm.trans (ev_lw (by rw [hl2 _ (by decide)]; exact hLa)))
      have e3 : vN = .val (.word AL) := Option.some.inj (hN.symm.trans (ev_lw (by rw [hl2 _ (by decide)]; exact hLal)))
      refine ⟨Out, A, AL, e1, e2, e3, ?_, fun t hd hb hg hcp hbf hlc hct => ?_⟩
      · by_cases hAL0 : AL = 0
        · exact Or.inl hAL0
        right
        have hALn : AL.toNat ≠ 0 := fun h => hAL0 (BitVec.eq_of_toNat_eq (by simpa using h))
        have hhp := hphp (by omega)
        have hsA := hAl hAL0
        have := A.isLt
        refine ⟨by omega, by omega, by omega, fun a ha hb => ?_⟩
        obtain ⟨h1, h2⟩ := ha
        obtain ⟨h3, h4⟩ := hb
        omega
      · refine ⟨rfl, hlc, hd.trans hdA, hb.trans hdB, (Band.ptrsOf_glob hg).trans hptr2, ?_, ?_⟩
        · have := hcp; rw [hmem2, hdA, hdB] at this; exact this
        · intro Y hY; have := hbf Y hY; rw [hmem2, hdA, hdB] at this; exact this
    · have hOA' : (Out + AL).toNat = Out.toNat + AL.toNat := by
        rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
      refine hseq (R := fun u => u.locals = s2.locals ∧ u.be = s.be ∧ ptrsOf u = some p' ∧
          ∀ j, j < AL.toNat + BL.toNat → Hooks.byteAt u.memory s.be (Out + BitVec.ofNat 64 j) < 16) ?_ ?_
      · refine hoare_callD_memcpyT hC ?_
        intro u hu ⟨hlu, hdu, hbu, hpu, hcp1, hbf1⟩ vD vS vN hD hS hN
        have e1 : vD = .val (.word (Out + AL)) := Option.some.inj (hD.symm.trans
          (ev_add2 (ev_lw (by rw [hlu]; exact hLo)) (ev_lw (by rw [hlu, hl2 _ (by decide)]; exact hLal))))
        have e2 : vS = .val (.word B) := Option.some.inj (hS.symm.trans
          (ev_lw (by rw [hlu, hl2 _ (by decide)]; exact hLb)))
        have e3 : vN = .val (.word BL) := Option.some.inj (hN.symm.trans
          (ev_lw (by rw [hlu, hl2 _ (by decide)]; exact hLbl)))
        have hOB : BL ≠ 0 → B.toNat + BL.toNat ≤ Out.toNat := fun hBL0 =>
          le_trans (hBl hBL0) (hphp (by have : BL.toNat ≠ 0 := fun h => hBL0 (BitVec.eq_of_toNat_eq (by simpa using h)); omega))
        refine ⟨Out + AL, B, BL, e1, e2, e3, ?_, fun t hd hb hg hcp hbf hlc hct => ?_⟩
        · by_cases hBL0 : BL = 0
          · exact Or.inl hBL0
          right
          have hBLn : BL.toNat ≠ 0 := fun h => hBL0 (BitVec.eq_of_toNat_eq (by simpa using h))
          have hhp := hphp (by omega)
          have hsB := hBl hBL0
          have := B.isLt
          have hpe : p.hp ≤ heapEnd := hord.2.1
          refine ⟨by omega, by omega, by omega, fun a ha hb => ?_⟩
          obtain ⟨h1, h2⟩ := ha
          obtain ⟨h3, h4⟩ := hb
          rw [hOA'] at h1 h2
          omega
        · refine ⟨rfl, hlc.trans hlu, hb.trans hbu, (Band.ptrsOf_glob hg).trans hpu, ?_⟩
          have hc2 := hcp
          have hbf2 := hbf
          rw [hdu, hbu] at hc2 hbf2
          exact nc_bytes hcp1 hc2 hbf2 h8 (by omega) hA hB (fun h => hOB (fun e => h (by rw [e]; rfl)))
      · refine hoare_return fun t _ ⟨hlt, hbt, hpt, hby⟩ v hv => ?_
        rw [ev_lw (by rw [hlt]; exact hLo)] at hv
        cases hv
        intro v' hv'
        simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
        subst hv'
        exact ⟨p', Out, rfl, hpt, hord', hmono, hbt, h8, hlb0, by omega, hfree, hby⟩
  have H' := H s hs rfl hgood
  rw [hr] at H'
  exact H' _ rfl

/-- A nonempty `NIn` slice ends below the heap pointer. -/
theorem nIn_hp {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {np nl : BitVec 64} (h : NIn Γ np nl) (h0 : nl ≠ 0) :
    np.toNat + nl.toNat ≤ q.hp := by
  rcases h with h | ⟨hb, hN⟩
  · exact absurd h h0
  have hpos : 0 < nl.toNat := by
    by_contra hz
    exact h0 (BitVec.eq_of_toNat_eq (by simpa using (by omega : nl.toNat = 0)))
  obtain ⟨x, hx, r, hr, ht, h1, h2⟩ := hN (nl.toNat - 1) (by omega)
  obtain ⟨p1, hp1, hord, hL, -⟩ := hh.1
  rw [hh.2.1] at hp1
  cases hp1
  rw [haC] at hL
  have hlive := (hL.1 x hx).2.2.2.2
  have hsz := (hL.1 x hx).2.2.2.1
  rw [ht, Hooks.nib_region hr] at hlive
  rw [ht, Types.ty_NIB r hr] at hsz
  simp only [Region.Live] at hlive
  simp only [Types.nibTy] at hsz
  unfold Obj.lo at hlive h1 h2
  omega

theorem node_below_ins {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {o : Obj} (ho : o ∈ Γ) (ht : o.ty ∈ Node.nodeTys) :
    o.base.toNat + o.size ≤ q.hp := Dn.node_below haC hh ho ht |>.1

/-- A protected cell of an object of `Γ` is unchanged by a call (the call's frame: only `WCell`s change). -/
theorem prot_frame {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {o : Obj}
    (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) (hprot : (a.Cb.ty o.ty).slot k = .prot)
    (hty : o.ty ∈ Node.nodeTys) (haCb : a.Cb = Types.guestC) (haC : a.C = Types.guestC) :
    st.memory (o.cell k) = s.memory (o.cell k) := by
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  rw [co.heap0.2.1] at hp1
  cases hp1
  rw [haC] at hL
  refine co.frame _ ?_ ?_
  · rintro ⟨o', ho', k', hk', hnp, hcell⟩
    obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho hk' hk hcell.symm
    exact hnp hprot
  · have hc := (cell_toNat hord hL ho hk).1
    have hbn := node_below_ins haC co.heap0 ho hty
    have hlive := (hL.1 o ho).2.2.2.2
    rw [Dn.node_region hty] at hlive
    simp only [Region.Live] at hlive
    unfold Obj.lo at hc hlive
    unfold Obj.HasSlot at hk
    unfold Ptrs.Allocated; left
    omega

/-- **The adoption after the call**, for a block of `M` bytes (`Dn.ctn_adopt` with `2 N` replaced by `M`). -/
theorem buf_adopt {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) (hg : sg'.grows = false)
    {out len : BitVec 64} {M : Nat} (h8 : out.toNat % 8 = 0) (hbase : heapBase ≤ out.toNat)
    (hhp : out.toNat + M ≤ q'.hp)
    (hfr : ∀ x : Nat, out.toNat ≤ x → x < out.toNat + M → ¬ q.Allocated x)
    (hlen : len.toNat ≤ M)
    (hbyte : ∀ j, j < len.toNat → Hooks.byteAt st.memory st.be (out + BitVec.ofNat 64 j) < 16) :
    ∃ Γ'' : Gam, Ext Γ' Γ'' ∧ Heap a Γ'' q' st ∧ ScrOld Γ' Γ'' ∧ Hooks.NIn Γ'' out len ∧
      (∀ o ∈ Γ'', o ∈ Γ' ∨ ∃ r, r < 8 ∧ o.ty = Types.tNIB r ∧ out.toNat ≤ o.lo ∧
        o.hi ≤ out.toNat + 8 * nw len.toNat) ∧ (0 < len.toNat → q.hp ≤ out.toNat) := by
  have hord := heap_ord co.heap0
  have hord' := heap_ord co.heap
  have hE := Hooks.heapEnd_lt
  obtain ⟨p1, hp1, -, hL, -⟩ := co.heap0.1
  rw [co.heap0.2.1] at hp1
  cases hp1
  have hnw : 8 * nw len.toNat ≤ len.toNat + 7 := by unfold nw; omega
  have hnw' : len.toNat ≤ 8 * nw len.toNat := by unfold nw; omega
  have hhpe : q'.hp ≤ heapEnd := hord'.2.1
  have hhp8 : q'.hp % 8 = 0 := hord'.2.2.2.2.2.1
  have hs2 : out.toNat + 8 * nw len.toNat ≤ heapEnd := by unfold nw; omega
  have hblk : ∀ x : BitVec 64, Overlap out.toNat (8 * nw len.toNat) x →
      out.toNat ≤ x.toNat ∧ x.toNat < out.toNat + M := by
    intro x ⟨hx8, hx1, hx2⟩
    unfold nw at hx2
    omega
  have hF : MptH.BlkF out (8 * nw len.toNat) Γ' q' := by
    intro x hx
    obtain ⟨h1, h2⟩ := hblk x hx
    refine ⟨fun hin => hfr x.toNat h1 h2 ?_, ?_⟩
    · rw [haC] at hL
      exact HtabEntries.alloc_of_inObj hord (C := Types.guestC) hL (co.nfp hg) hin
    · unfold Ptrs.Allocated; left; omega
  have hnA : ∀ x : BitVec 64, Overlap out.toNat (8 * nw len.toNat) x → ¬ a.p0.Allocated x.toNat := by
    intro x hx hal
    obtain ⟨h1, h2⟩ := hblk x hx
    exact hfr x.toNat h1 h2 (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 hal)
  obtain ⟨Γ'', hx1, hx2, hh2, hnew, hN⟩ := adopt_nib ha haC haH hgr co.heap hbase hs2 h8 hF hnA hbyte
  refine ⟨Γ'', hx1, hh2, scrOld_adopt_nib (scrOld_refl Γ') (fun o ho => ?_), hN, hnew, fun hpos => ?_⟩
  · rcases hnew o ho with h | ⟨r, hr, ht, -, -⟩
    · exact Or.inl h
    · exact Or.inr ⟨r, hr, ht, trivial⟩
  · by_contra hlt
    exact hfr out.toNat le_rfl (by omega) (by unfold Ptrs.Allocated; left; omega)

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.buf_adopt
#print axioms InitECandidate.Solver.MemSafe.Ins.nIn_hp
#print axioms InitECandidate.Solver.MemSafe.Ins.prot_frame
#print axioms InitECandidate.Solver.MemSafe.Ins.funSpec_nc_val
