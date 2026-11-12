import InitECandidate.Solver.Spec.Mpt.Fill.Push

/-!
# One iteration of the `_node_rlp_fill` loop

`body_step`: from `FInv` with `top ≠ 0` and measure `k0`, a normal completion of `fillBody`
ends in `FInv` with a measure below `k0` (`scan_hoare`, then `push_step` or `pop_step`).
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-- The post of one iteration. -/
def FPost (Nd : BitVec 64 → Prop) (HP0 S0 k0 : Nat) (r : Option (PanSemResultExact 64))
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  r = none ∨ r = some .continue → FInv Nd HP0 S0 t ∧ fMu t < k0

theorem fpost_restore {Nd : BitVec 64 → Prop} {HP0 S0 k0 : Nat} {r : Option (PanSemResultExact 64)}
    {t : PanSemStateFiniteExact 64 σ} {y : MlS} (hy : y ≠ nm "top") (old : Option (ValueHOL 64))
    (h : FPost Nd HP0 S0 k0 r t) :
    FPost Nd HP0 S0 k0 r { t with locals := t.locals.resVarEq (y, old) } := by
  intro hr
  obtain ⟨hI, hmu⟩ := h hr
  have hc := finv_congr (s := t) (t := { t with locals := t.locals.resVarEq (y, old) })
    rfl rfl rfl (lookup_resVarEq_ne _ _ hy) hI
  exact ⟨hc.1, by rw [hc.2]; exact hmu⟩

/-- From the scan post to the arm facts. -/
theorem armPre_of_scan {Nd : BitVec 64 → Prop} {HP0 S0 d : Nat} {p : Ptrs} {T N : BitVec 64}
    {s s4 t : PanSemStateFiniteExact 64 σ} (hm4 : s4.memory = s.memory) (hg4 : s4.globals = s.globals)
    (hb4 : s4.be = s.be) (hp : ptrsOf s = some p) (hord : p.Ordered) (h0 : HP0 ≤ p.hp)
    (hb0 : heapBase ≤ HP0) (hsp : p.sp ≤ S0) (hS0 : S0 ≤ scratchEnd) (htr : TrieOK s Nd HP0)
    (hch : ChainF s Nd HP0 p.hp S0 (d + 1) p.sp false T)
    (hT4 : s4.locals.lookup (nm "top") = some (.val (.word T)))
    (hN4 : s4.locals.lookup (nm "nd") = some (.val (.word N))) (hN : rd s.memory (T + 8) = N)
    (h : ScanPost Nd s4 T N t) :
    ArmPre Nd HP0 S0 d p T N t ∧
      ∀ x : BitVec 64, x.toNat < heapEnd → t.memory x = s.memory x := by
  obtain ⟨hg, hbe, hl, hmem, -⟩ := h
  have hhp := hord.2.1
  have hspE := heapEnd_le_sp hord
  obtain ⟨-, hT1, hT2, -, -⟩ := id hch
  have := scratchEnd_lt
  have h16 : (T + 16).toNat = T.toNat + 16 := toNat_add_k (k := 16) (by omega)
  have hout : ∀ x : BitVec 64, x.toNat < heapEnd → t.memory x = s.memory x := fun x hx => by
    rcases hmem with e | ⟨v, -, e⟩
    · rw [e, hm4]
    · rw [e, hm4]; unfold upd; rw [if_neg (by rintro rfl; omega)]
  refine ⟨⟨by rw [ptrsOf_frame (hg.trans hg4)]; exact hp, hord, h0, hb0, hsp, hS0, ?_,
    by rw [hl _ (by decide) (by decide)]; exact hT4, by rw [hl _ (by decide) (by decide)]; exact hN4,
    ?_, ?_⟩, hout⟩
  · refine trieOK_frame (by omega) htr (fun a ha x hx => hout x ?_)
      (gword_of_eq (hg.trans hg4) _) (gword_of_eq (hg.trans hg4) _)
    have := (htr.1 a ha).2.1; have := hx.1.2; omega
  · have h8 : (T + 8).toNat = T.toNat + 8 := toNat_add_k (k := 8) (by omega)
    rw [← hN]
    refine rd_eq ?_
    rcases hmem with e | ⟨v, -, e⟩
    · rw [e, hm4]
    · rw [e, hm4]; unfold upd
      rw [if_neg (by intro e'; have := congrArg BitVec.toNat e'; omega)]
  · rcases hmem with e | ⟨v, hv, e⟩
    · exact chainF_of_eq (by rw [e, hm4]) (hbe.trans hb4) (by exact hch)
    · refine chainF_set16 (s := s) (by omega) hspE (hbe.trans hb4) htr.1 h0 hhp htr.2.2.2
        (v := v) (by rw [e, hm4]) hv ?_
      exact hch

/-- **One iteration.** -/
theorem body_step (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hbeg : BeginSpec σ X) (hfin : FinishSpec σ X) {Nd : BitVec 64 → Prop} {HP0 S0 : Nat}
    (k0 : Nat) :
    Hoare σ X (fun s => FInv Nd HP0 S0 s ∧ CondTrue s fillCond ∧ fMu s = k0) fillBody
      (FPost Nd HP0 S0 k0) := by
  unfold fillBody
  refine hoare_dec fun s _ ⟨hI, hc, hk⟩ v hv _ => ?_
  obtain ⟨p, hp, hord, h0, hb0, hsp, hS0, htr, T, d', hT, hch⟩ := hI
  have hT0 : T ≠ 0 := by
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv, hT] at hx; rw [ev_cw] at hy
    cases hx; cases hy
    exact notEqual_true hxy
  obtain ⟨d, rfl⟩ : ∃ d, d' = d + 1 := by
    cases d' with
    | zero => exact absurd hch hT0
    | succ d => exact ⟨d, rfl⟩
  have hk0 : k0 = (p.sp - heapEnd) / 24 + (d + 1) := by rw [← hk]; exact fMu_of hp hT hS0 hch
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add_cw hT 8] at hw
  cases hw
  rw [mem_word s.memory]
  set N := rd s.memory (T + BitVec.ofNat 64 8) with hNdef
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "nd") (.val (.word N)) s)
    (Q := FPost Nd HP0 S0 k0) ?_ (fun _ _ h => h) (fun _ _ _ _ h => fpost_restore (by decide) _ h)
  refine hoare_dec fun s1 _ hs1 v hv _ => ?_
  subst hs1
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add_cw (lk_set_self _ _ _) 0] at hw
  cases hw
  have hN0 : N + BitVec.ofNat 64 0 = N := by simp
  rw [hN0, mem_word (setVarHOLFinite (nm "nd") (.val (.word N)) s).memory N]
  refine hoare_conseq (Q := FPost Nd HP0 S0 k0) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => fpost_restore (by decide) _ h)
  refine hoare_dec fun s2 _ hs2 v hv _ => ?_
  subst hs2
  rw [ev_cw] at hv
  cases hv
  refine hoare_conseq (Q := FPost Nd HP0 S0 k0) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => fpost_restore (by decide) _ h)
  refine hoare_dec fun s3 _ hs3 v hv _ => ?_
  subst hs3
  rw [ev_cw] at hv
  cases hv
  refine hoare_conseq (Q := FPost Nd HP0 S0 k0) ?_ (fun _ _ h => h)
    (fun _ _ _ _ h => fpost_restore (by decide) _ h)
  -- the state after the four declarations
  set s4 := setVarHOLFinite (nm "found") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "child") (.val (.word (BitVec.ofNat 64 0)))
      (setVarHOLFinite (nm "k") (.val (.word (rd (setVarHOLFinite (nm "nd") (.val (.word N)) s).memory N)))
        (setVarHOLFinite (nm "nd") (.val (.word N)) s))) with hs4
  have hm4 : s4.memory = s.memory := rfl
  have hl4 : ∀ y, y ≠ nm "found" → y ≠ nm "child" → y ≠ nm "k" → y ≠ nm "nd" →
      s4.locals.lookup y = s.locals.lookup y := fun y h1 h2 h3 h4 => by
    rw [hs4, lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2), lk_set_ne _ _ (Ne.symm h3),
      lk_set_ne _ _ (Ne.symm h4)]
  have hT4 : s4.locals.lookup (nm "top") = some (.val (.word T)) := by
    rw [hl4 _ (by decide) (by decide) (by decide) (by decide)]; exact hT
  have hN4 : s4.locals.lookup (nm "nd") = some (.val (.word N)) := by
    rw [hs4, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
      lk_set_self]
  have hk4 : s4.locals.lookup (nm "k") = some (.val (.word (rd s4.memory N))) := by
    rw [hs4, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]; rfl
  have hc4 : s4.locals.lookup (nm "child") = some (.val (.word (BitVec.ofNat 64 0))) := by
    rw [hs4, lk_set_ne _ _ (by decide), lk_set_self]
  have hf4 : s4.locals.lookup (nm "found") = some (.val (.word (BitVec.ofNat 64 0))) := by
    rw [hs4, lk_set_self]
  obtain ⟨hT0', hT1, hT2, ⟨r1, r2, -, r4, -, -⟩, -⟩ := id hch
  have hTh : heapEnd ≤ T.toNat := le_trans (heapEnd_le_sp hord) hT1
  refine hoare_pre (P := fun t => t = s4) ?_ (fun t _ ht => ht)
  refine hoare_seq (R := fun r t => r = none ∧ ScanPost Nd s4 T N t)
    (scan_hoare hC hNS (HP0 := HP0) htr.1 (by have := hord.2.1; omega) r1 hT4 hTh (by omega) hN4 hk4
      hc4 hf4 r4) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  have harm := fun t (h : ScanPost Nd s4 T N t) =>
    armPre_of_scan (d := d) (p := p) (s := s) (s4 := s4) rfl rfl rfl hp hord h0 hb0 hsp hS0 htr hch hT4 hN4 rfl h
  refine hoare_ite ?_ ?_
  · intro t ht ⟨⟨_, hsp4⟩, w, hw, hw0⟩
    obtain ⟨harm1, hout⟩ := harm t hsp4
    obtain ⟨-, -, -, -, F, C, hF, hCl, hFC⟩ := hsp4
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv, hF] at hx; rw [ev_cw] at hy
    cases hx; cases hy
    obtain ⟨hNdC, hkC, hkN⟩ := hFC (notEqual_true hxy)
    have hCh : C.toNat < heapEnd := by
      have := (htr.1 C hNdC).2.1; have := nsz_ge (rd s.memory C); have := hord.2.1; omega
    have hNh : N.toNat < heapEnd := by
      have := (htr.1 N r1).2.1; have := nsz_ge (rd s.memory N); have := hord.2.1; omega
    have H := push_step (C := C) hC hbeg t ht ⟨harm1, hCl, hNdC, by rw [rd_eq (hout C hCh)]; exact hkC,
      by rw [rd_eq (hout N hNh)]; exact hkN⟩
    intro htr'
    have := H htr'
    obtain ⟨hr, hI', hmu⟩ := this
    intro _
    exact ⟨hI', by rw [hk0]; exact hmu⟩
  · intro t ht ⟨⟨_, hsp4⟩, hw⟩
    obtain ⟨harm1, -⟩ := harm t hsp4
    have H := pop_step hfin t ht harm1
    intro htr'
    obtain ⟨hr, hI', hmu⟩ := H htr'
    intro _
    exact ⟨hI', by rw [hk0]; exact hmu⟩

end InitECandidate.Solver.Spec.Mpt
