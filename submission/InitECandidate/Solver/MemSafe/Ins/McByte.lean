import InitECandidate.Solver.Spec.Inv.Memcpy

set_option autoImplicit false

/-!
# `memcpy` to an unaligned destination also keeps every byte outside the destination

`Spec/Inv/Memcpy.lean`'s `CopyPost` is cell-level outside `[D, D + N)`. When `dst` is not 8-aligned the
copy runs only the two byte loops, and every byte outside `[D, D + N)` (also those in the first partial
cell) is unchanged. `funSpec_memcpy_unal`: `CopyPost` and that byte frame.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- Every byte outside `[D, D + c)` is as in `m0`. -/
def BFr (m0 m : Mem) (d : BitVec 64 → Prop) (be : Bool) (D : BitVec 64) (c : Nat) : Prop :=
  ∀ X : BitVec 64, (X.toNat < D.toNat ∨ D.toNat + c ≤ X.toNat) → kbyte m d be X = kbyte m0 d be X

theorem bfr_zero (m0 : Mem) (d : BitVec 64 → Prop) (be : Bool) (D : BitVec 64) : BFr m0 m0 d be D 0 :=
  fun _ _ => rfl

section steps
variable {m0 m : Mem} {d : BitVec 64 → Prop} {be : Bool} {D S N : BitVec 64} {c : Nat}
variable (hP : MCPre D S N)
include hP

theorem bfr_step_b (hbf : BFr m0 m d be D c) (hcN : c < N.toNat) {byte : UInt8}
    (hdD : d (panByteAlignHOL (D + BitVec.ofNat 64 c))) :
    BFr m0 (upd m (panByteAlignHOL (D + BitVec.ofNat 64 c))
      (panSetByteHOL (D + BitVec.ofNat 64 c)
        (BitVec.ofNat 64 (BitVec.ofNat 8 (BitVec.ofNat 64 byte.toNat).toNat).toNat)
        (rd m (panByteAlignHOL (D + BitVec.ofNat 64 c))) be)) d be D (c + 1) := by
  have hdl := hP.d_le
  have hDc := add_ofNat_toNat (B := D) (j := c) (by omega)
  intro X hX
  rw [kbyte_storeByte hdD, if_neg]
  · exact hbf X (by omega)
  · intro e
    have := congrArg BitVec.toNat e
    rw [hDc] at this
    omega

end steps

/-! ## The loops, with the byte frame -/

section loops
variable {σ : Type} {X : Ctx 64} (s0 : PanSemStateFiniteExact 64 σ) (D S N : BitVec 64)

def CpSB (I : BitVec 64) (c : Nat) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  CpS s0 D S N I c u ∧ BFr s0.memory u.memory s0.memaddrs s0.be D c

def JBB (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ I : BitVec 64, CpSB s0 D S N I I.toNat u ∧ I.toNat ≤ N.toNat

variable {s0 D S N} (hP : MCPre D S N)
include hP

theorem hstBB {I : BitVec 64} {c : Nat} (k : Nat) (hc : c = I.toNat + k) (hcN : c < N.toNat) :
    Hoare σ X (CpSB s0 D S N I c) (stB k) (fun r u => r = none ∧ CpSB s0 D S N I (c + 1) u) := by
  refine hoare_storeByte fun u _ ⟨⟨hD, hS, hN, hI, hd, hbe, hg, hcp⟩, hbf⟩ w x mem hw hx hmem => ?_
  rw [ev_oE hD hI, ← hc] at hw
  cases hw
  obtain ⟨w', hw', byte, hbyte, hxv⟩ := ev_loadByte_inv hx
  rw [ev_oE hS hI, ← hc] at hw'
  cases hw'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv
  subst hxv
  have hmem' := hmem
  rw [hd, hbe] at hmem' hbyte
  obtain ⟨hdD, rfl⟩ := storeByte_eq hmem'
  refine ⟨rfl, ⟨hD, hS, hN, hI, hd, hbe, hg, ?_⟩, ?_⟩
  · exact memcpy_step_b hP hcp hcN hbyte hdD
  · show BFr s0.memory _ s0.memaddrs s0.be D (c + 1)
    exact bfr_step_b hP hbf hcN hdD

theorem hincB {I : BitVec 64} (k : Nat) (hk : I.toNat + k ≤ N.toNat) :
    Hoare σ X (CpSB s0 D S N I (I.toNat + k)) (incI k)
      (fun r u => r = none ∧ CpSB s0 D S N (I + BitVec.ofNat 64 k) (I + BitVec.ofNat 64 k).toNat u) := by
  refine hoare_assign fun u _ ⟨⟨hD, hS, hN, hI, hd, hbe, hg, hcp⟩, hbf⟩ v hv _ => ?_
  rw [ev_add2 (ev_lv_w hI) (ev_cw u k)] at hv
  cases hv
  have ht : (I + BitVec.ofNat 64 k).toNat = I.toNat + k := by
    rw [ofs_eq, BitVec.toNat_ofNat]; have := hP.n_lt; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨rfl, ⟨by lks, by lks, by lks, ?_, hd, hbe, hg, by rw [ht]; exact hcp⟩, by rw [ht]; exact hbf⟩
  unfold DLk; rw [lk_set_self]

theorem loopB8B :
    Hoare σ X (JBB s0 D S N) (.while (geN 8) cpB8) (fun r u => r = none ∧ JBB s0 D S N u) := by
  have hn := hP.n_lt
  refine hoare_while (fun _ h => h) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  intro u hu ⟨⟨I, hcs, hle⟩, hc⟩ ht
  have h8 := geN_true hcs.1.2.2.1 hcs.1.2.2.2.1 hc (by omega)
  have H : Hoare σ X (CpSB s0 D S N I I.toNat) cpB8 (fun r u => r = none ∧
      CpSB s0 D S N (I + BitVec.ofNat 64 8) (I + BitVec.ofNat 64 8).toNat u) :=
    hseq (hstBB hP 0 rfl (by omega)) (hseq (hstBB hP 1 rfl (by omega))
      (hseq (hstBB hP 2 (by omega) (by omega)) (hseq (hstBB hP 3 (by omega) (by omega))
        (hseq (hstBB hP 4 (by omega) (by omega)) (hseq (hstBB hP 5 (by omega) (by omega))
          (hseq (hstBB hP 6 (by omega) (by omega)) (hseq (hstBB hP 7 (by omega) (by omega))
            (hoare_pre (hincB hP 8 (by omega)) (fun _ _ h => by
              rw [show I.toNat + 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1 = I.toNat + 8 by omega] at h
              exact h)))))))))
  have := H u hu hcs ht
  have ht' : (I + BitVec.ofNat 64 8).toNat = I.toNat + 8 := by
    rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨fun hr => ⟨_, (this.2), by omega⟩, fun hr => absurd (this.1.symm.trans hr) (by simp),
    fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩

theorem loopB1B :
    Hoare σ X (JBB s0 D S N) (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) cpB1)
      (fun r u => r = none ∧ CpSB s0 D S N N N.toNat u) := by
  have hn := hP.n_lt
  refine hoare_while (fun _ h => h) ?_ ?_
  · intro u hu ⟨⟨I, hcs, hle⟩, hc⟩ ht
    have h1 : I.toNat < N.toNat := by
      obtain ⟨w, hw, hw0⟩ := hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_w hcs.1.2.2.2.1] at hx
      rw [ev_lv_w hcs.1.2.2.1] at hy
      cases hx; cases hy
      exact lower_true hxy
    have H : Hoare σ X (CpSB s0 D S N I I.toNat) cpB1 (fun r u => r = none ∧
        CpSB s0 D S N (I + BitVec.ofNat 64 1) (I + BitVec.ofNat 64 1).toNat u) :=
      hseq (hstBB hP 0 rfl (by omega)) (hincB hP 1 (by omega))
    have := H u hu hcs ht
    have ht' : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
      rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    refine ⟨fun hr => ⟨_, (this.2), by omega⟩, fun hr => absurd (this.1.symm.trans hr) (by simp),
      fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩
  · intro u _ ⟨I, hcs, hle⟩ hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lv_w hcs.1.2.2.2.1] at hx
    rw [ev_lv_w hcs.1.2.2.1] at hy
    cases hx; cases hy
    have := lower_false hxy
    have e : I = N := BitVec.eq_of_toNat_eq (by omega)
    subst e
    exact ⟨rfl, hcs⟩

omit hP in
theorem cpsb_zero (hD : DLk s0 "dst" D) (hS : DLk s0 "src" S) (hN : DLk s0 "n" N) :
    CpSB s0 D S N 0 0 (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) s0) :=
  ⟨cps_zero hD hS hN, bfr_zero _ _ _ _⟩

omit hP in
theorem alE_false {u : PanSemStateFiniteExact 64 σ} {x y : String} (hD : DLk u x D) (hS : DLk u y S)
    (hnal : ¬ (D.toNat % 8 = 0 ∧ S.toNat % 8 = 0))
    (hw : ev u (alE x y) = some (.val (.word 0))) : True := trivial

theorem mcBody_unal (hD : DLk s0 "dst" D) (hS : DLk s0 "src" S) (hN : DLk s0 "n" N)
    (hnal : ¬ (D.toNat % 8 = 0 ∧ S.toNat % 8 = 0)) :
    Hoare σ X (fun t => t = s0) mcBody (fun r u => ∀ v, r = some (.returned v) →
      CopyPost s0 u D S N ∧ BFr s0.memory u.memory s0.memaddrs s0.be D N.toNat) := by
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  rw [ev_cw] at hv
  cases hv
  have h0 := cpsb_zero hD hS hN
  refine hseq (R := JBB u D S N) ?_ ?_
  · refine hoare_ite ?_ ?_
    · intro t ht ⟨ht0, w, hw, hw0⟩ htr
      subst ht0
      exact absurd (alE_true h0.1.1 h0.1.2.1 hw hw0) hnal
    · exact hoare_skip fun t _ ⟨ht0, _⟩ => by subst ht0; exact ⟨rfl, 0, h0, by simp⟩
  · refine hseq (loopB8B hP) (hseq (loopB1B hP) ?_)
    refine hoare_return fun t _ hcs v _ => ?_
    intro v' hv'
    exact ⟨⟨hcs.1.2.2.2.2.1, hcs.1.2.2.2.2.2.1, hcs.1.2.2.2.2.2.2.1, hcs.1.2.2.2.2.2.2.2⟩, hcs.2⟩

end loops

/-! ## The zero-length copy -/

section zero
variable {σ : Type} {X : Ctx 64}

def ZS (s0 : PanSemStateFiniteExact 64 σ) (D S : BitVec 64) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "dst" D ∧ DLk u "src" S ∧ DLk u "n" 0 ∧ DLk u "i" 0 ∧ u.memory = s0.memory ∧
    u.memaddrs = s0.memaddrs ∧ u.be = s0.be ∧ u.globals = s0.globals

theorem zloop_ge (s0 : PanSemStateFiniteExact 64 σ) (D S : BitVec 64) (k : Nat) (hk : k < 2 ^ 63)
    (hk0 : 0 < k) (body : ProgHOL 64) :
    Hoare σ X (ZS s0 D S) (.while (geN k) body) (fun r u => r = none ∧ ZS s0 D S u) := by
  refine hoare_while (fun _ h => h) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  intro u hu ⟨hz, hc⟩ ht
  have := geN_true hz.2.2.1 hz.2.2.2.1 hc (by simp; omega)
  simp at this; omega

theorem zloop_lt (s0 : PanSemStateFiniteExact 64 σ) (D S : BitVec 64) (body : ProgHOL 64) :
    Hoare σ X (ZS s0 D S) (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) body)
      (fun r u => r = none ∧ ZS s0 D S u) := by
  refine hoare_while (fun _ h => h) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  intro u hu ⟨hz, hc⟩ ht
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lv_w hz.2.2.2.1] at hx
  rw [ev_lv_w hz.2.2.1] at hy
  cases hx; cases hy
  have := lower_true hxy
  simp at this

theorem mcBody_zero {s0 : PanSemStateFiniteExact 64 σ} {D S : BitVec 64}
    (hD : DLk s0 "dst" D) (hS : DLk s0 "src" S) (hN : DLk s0 "n" 0) :
    Hoare σ X (fun t => t = s0) mcBody (fun r u => ∀ v, r = some (.returned v) →
      u.memory = s0.memory ∧ u.memaddrs = s0.memaddrs ∧ u.be = s0.be ∧ u.globals = s0.globals) := by
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  rw [ev_cw] at hv
  cases hv
  have h0 : ZS u D S (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) u) :=
    ⟨by lks, by lks, by lks, by unfold DLk; rw [lk_set_self]; rfl, rfl, rfl, rfl, rfl⟩
  refine hseq (R := ZS u D S) ?_ ?_
  · refine hoare_ite ?_ ?_
    · intro t ht ⟨ht0, w, hw, hw0⟩ htr
      subst ht0
      exact hseq (zloop_ge u D S 32 (by omega) (by omega) _) (zloop_ge u D S 8 (by omega) (by omega) _)
        _ ht h0 htr
    · exact hoare_skip fun t _ ⟨ht0, _⟩ => by subst ht0; exact ⟨rfl, h0⟩
  · refine hseq (zloop_ge u D S 8 (by omega) (by omega) _) (hseq (zloop_lt u D S _) ?_)
    refine hoare_return fun t _ hz v _ => ?_
    intro v' hv'
    exact ⟨hz.2.2.2.2.1, hz.2.2.2.2.2.1, hz.2.2.2.2.2.2.1, hz.2.2.2.2.2.2.2⟩

end zero

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`memcpy` to an unaligned destination**: `CopyPost` and a byte frame. -/
theorem funSpec_memcpy_unal (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memcpy") (fun vs s r u => ∀ D S N : BitVec 64,
      vs = [.val (.word D), .val (.word S), .val (.word N)] → MCPre D S N → D.toNat % 8 ≠ 0 →
      ∀ v, r = .returned v → CopyPost s u D S N ∧ BFr s.memory u.memory s.memaddrs s.be D N.toNat) := by
  intro vs body callee rs hl s hs hloc r hr D S N hvs hP hD8 v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full code_memcpy (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hD : DLk s "dst" D := by unfold DLk; rw [hloc]; exact hA
  have hS : DLk s "src" S := by unfold DLk; rw [hloc]; exact hB
  have hN : DLk s "n" N := by unfold DLk; rw [hloc]; exact hC'
  have H := mcBody_unal (X := X) hP hD hS hN (fun h => hD8 h.1) s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl


/-- **`memcpy`, every case**: `Cp`, and the bytes before `D` are unchanged. -/
theorem funSpec_memcpy_total (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memcpy") (fun vs s r u => ∀ D S N : BitVec 64,
      vs = [.val (.word D), .val (.word S), .val (.word N)] → (N = 0 ∨ MCPre D S N) →
      ∀ v, r = .returned v → u.memaddrs = s.memaddrs ∧ u.be = s.be ∧ u.globals = s.globals ∧
        Cp s.memory u.memory s.memaddrs s.be D S N.toNat ∧
        ∀ Y : BitVec 64, Y.toNat < D.toNat → kbyte u.memory s.memaddrs s.be Y = kbyte s.memory s.memaddrs s.be Y) := by
  intro vs body callee rs hl s hs hloc r hr D S N hvs hP v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full code_memcpy (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hD : DLk s "dst" D := by unfold DLk; rw [hloc]; exact hA
  have hS : DLk s "src" S := by unfold DLk; rw [hloc]; exact hB
  have hN : DLk s "n" N := by unfold DLk; rw [hloc]; exact hC'
  have hgood : Tracked (evaluateHOLFiniteState s mcBody).1 := by rw [hr, hv]; trivial
  by_cases hN0 : N = 0
  · subst hN0
    have H := mcBody_zero (X := X) hD hS hN s hs rfl hgood
    rw [hr, hv] at H
    obtain ⟨hm, hd, hb, hg⟩ := H _ rfl
    refine ⟨hd, hb, hg, ⟨fun a _ => by rw [hm], fun j hj => absurd hj (by simp)⟩, fun Y _ => ?_⟩
    rw [hm]
  have hP : MCPre D S N := hP.resolve_left hN0
  by_cases hD8 : D.toNat % 8 = 0
  · have H := mcBody_hoare (X := X) hP hD hS hN s hs rfl hgood
    rw [hr, hv] at H
    obtain ⟨hd, hb, hg, hcp⟩ := H _ rfl
    refine ⟨hd, hb, hg, hcp, fun Y hY => ?_⟩
    refine kbyte_congr (hcp.1 _ ?_)
    rintro ⟨h1, -⟩
    rw [align_toNat] at h1
    have := Nat.div_mul_le_self Y.toNat 8
    omega
  · have H := mcBody_unal (X := X) hP hD hS hN (fun h => hD8 h.1) s hs rfl hgood
    rw [hr, hv] at H
    obtain ⟨⟨hd, hb, hg, hcp⟩, hbf⟩ := H _ rfl
    exact ⟨hd, hb, hg, hcp, fun Y hY => hbf Y (Or.inl hY)⟩

/-- `hoare_callD` for `memcpy`, in the form of `funSpec_memcpy_total`. -/
theorem hoare_callD_memcpyT (hC : X.code.lookup = guestCode) {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {eD eS eN : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ vD vS vN : ValueHOL 64, ev s eD = some vD → ev s eS = some vS →
      ev s eN = some vN → ∃ D S N : BitVec 64, vD = .val (.word D) ∧ vS = .val (.word S) ∧
      vN = .val (.word N) ∧ (N = 0 ∨ MCPre D S N) ∧
      ∀ t : PanSemStateFiniteExact 64 σ, t.memaddrs = s.memaddrs → t.be = s.be → t.globals = s.globals →
        Cp s.memory t.memory s.memaddrs s.be D S N.toNat →
        (∀ Y : BitVec 64, Y.toNat < D.toNat → kbyte t.memory s.memaddrs s.be Y = kbyte s.memory s.memaddrs s.be Y) →
        t.locals = s.locals → InCtx t X → Q none t) :
    Hoare σ X P (callD (nm "memcpy") [eD, eS, eN]) Q := by
  refine hoare_callD (funSpec_memcpy_total hC) fun s hs hp vs hvs callee v st hR hst => ?_
  obtain ⟨a, r1, rfl, ha, hr1⟩ := evs_cons_inv hvs
  obtain ⟨b, r2, rfl, hb, hr2⟩ := evs_cons_inv hr1
  obtain ⟨c, r3, rfl, hc, hr3⟩ := evs_cons_inv hr2
  have hr : r3 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr3; exact (Option.some.inj hr3).symm
  subst hr
  obtain ⟨D, S, N, rfl, rfl, rfl, hP, hk⟩ := h s hs hp a b c ha hb hc
  obtain ⟨h1, h2, h3, h4, h5⟩ := hR D S N rfl hP v rfl
  exact hk _ h1 h2 h3 h4 h5 rfl hst


end spec

end InitECandidate.Solver.Spec.Inv

#print axioms InitECandidate.Solver.Spec.Inv.funSpec_memcpy_unal
#print axioms InitECandidate.Solver.Spec.Inv.funSpec_memcpy_total
#print axioms InitECandidate.Solver.Spec.Inv.hoare_callD_memcpyT
