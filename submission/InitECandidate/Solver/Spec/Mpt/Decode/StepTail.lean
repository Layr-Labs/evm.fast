import InitECandidate.Solver.Spec.Mpt.Decode.StepCode

/-!
# The footprint of `_decode_step`: hypotheses and the three returns

The leaf facts `_decode_step`'s footprint rests on (all `FreshFoot`):

* `rlp_decode_fully(p, n)`: the item's payload lies in `[p, p + n)` when that does not wrap
  (`RdfQ`);
* `rlp_list_to_slices(p, n)`, `[p, p + n)` in allocated heap (`SlPre`): a fresh heap array of
  `cnt` slices that all lie in `[p, p + n)` (`SlQ`);
* `rlp_item(p, n)`: the payload length is `≤ n` (`RiQ`);
* `compact_to_nibbles(p, n)`, `n < 2^60`: fresh writes only;
* `node_new_branch`: a fresh 176-byte block.

`DQ H vs p M0`: the post of `_decode_step` for fixed entry pointers `p` and memory `M0`. The three
returning tails: the leaf (`ds_leafRet`), the extension record (`ds_extRec`) and the branch record
(`ds_brRec`).
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

def LenPre (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ (a : ValueHOL 64) (n : BitVec 64), vs = [a, .val (.word n)] ∧ n.toNat < 2 ^ 60

/-- `rlp_decode_fully(P, L)` returns `<a, b, c, d>` with `[b, b + c) ⊆ [P, P + L)` when
`P + L` does not wrap. -/
def RdfQ (vs : List (ValueHOL 64)) (_ _ : Ptrs) (_ : Mem) (v : ValueHOL 64) : Prop :=
  ∀ P L a b c d : BitVec 64, vs = [.val (.word P), .val (.word L)] →
    v = .rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)] →
    P.toNat + L.toNat < 2 ^ 64 → P.toNat ≤ b.toNat ∧ b.toNat + c.toNat ≤ P.toNat + L.toNat

def RiQ (vs : List (ValueHOL 64)) (_ _ : Ptrs) (_ : Mem) (v : ValueHOL 64) : Prop :=
  ∀ (x : ValueHOL 64) (len a b c d : BitVec 64), vs = [x, .val (.word len)] →
    v = .rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)] → c.toNat ≤ len.toNat

/-- `rlp_list_to_slices(P, N)`: the list payload `[P, P + N)` lies in allocated heap. -/
def SlPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] ∧ heapBase ≤ P.toNat ∧
    ∃ p : Ptrs, ptrsOf s = some p ∧ P.toNat + N.toNat ≤ p.hp

/-- `rlp_list_to_slices(P, N)` returns a fresh heap array `arr` of `cnt` slices (fresh: above the
entry `heap_ptr` when nonempty), all inside `[P, P + N)`. -/
def SlQ (vs : List (ValueHOL 64)) (p p' : Ptrs) (M : Mem) (v : ValueHOL 64) : Prop :=
  ∀ arr cnt : BitVec 64, v = .rStruct [.val (.word arr), .val (.word cnt)] →
    (0 < cnt.toNat → p.hp ≤ arr.toNat) ∧ arr.toNat + 16 * cnt.toNat ≤ p'.hp ∧
      ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] →
        SIn M arr cnt.toNat P.toNat (P.toNat + N.toNat)

/-- The post of `_decode_step` for fixed entry pointers `p` and memory `M0`. -/
def DQ (H : Nat) (vs : List (ValueHOL 64)) (p : Ptrs) (M0 : Mem)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
    (∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat) ∧ DecQ H vs p p' t.memory v

theorem dq_return {H : Nat} {vs : List (ValueHOL 64)} {p : Ptrs} {M0 : Mem} {e : ExpHOL 64}
    {P : State σ → Prop} {v0 : ValueHOL 64}
    (hv : ∀ t, P t → ev t e = some v0) (hTk : ∀ t, P t → Tk p M0 t)
    (hQ : ∀ t, P t → ∀ q : Ptrs, ptrsOf t = some q → p.Mono q → DecQ H vs p q t.memory v0) :
    Hoare σ X P (.return e) (fun r t => r ≠ none ∧ DQ H vs p M0 r t) := by
  refine hoare_return fun t _ hP v hv' => ⟨by simp, fun w hw => ?_⟩
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  rw [hv t hP] at hv'
  cases hv'
  obtain ⟨q, hq, hord, hmono, hfr⟩ := hTk t hP
  exact ⟨q, (ptrsOf_frame rfl).trans hq, hord, hmono, hfr, hQ t hP q hq hmono⟩

theorem tk_upd {p : Ptrs} {M0 : Mem} {t : State σ} (h : Tk p M0 t) {a : BitVec 64}
    (ha : ¬ p.Allocated a.toNat) (x : HolWordLab 64) :
    Tk p M0 { t with memory := upd t.memory a x } := by
  obtain ⟨q, hq, hord, hmono, hf⟩ := h
  refine ⟨q, (ptrsOf_frame rfl).trans hq, hord, hmono, fun b hb => ?_⟩
  by_cases e : b = a
  · subst e; exact ha
  · exact hf b (by rw [show t.memory b = upd t.memory a x b from (upd_out e).symm]; exact hb)

theorem slen_tk {ps : Ptrs} {Ms : Mem} {t : State σ} {A : BitVec 64} {K L : Nat}
    (h : Tk ps Ms t) (hs : SLen Ms A K L) (hA : heapBase ≤ A.toNat) (hK : A.toNat + 16 * K ≤ ps.hp)
    (hhp : ps.hp ≤ 2 ^ 64) : SLen t.memory A K L := by
  obtain ⟨-, -, -, -, hf⟩ := h
  refine slen_frame (by omega) (fun b hb1 hb2 => ?_) hs
  by_contra hne
  exact hf b hne (Or.inl ⟨by omega, by omega⟩)

theorem not_alloc_of {p q : Ptrs} (h : p.Mono q) {a : Nat} (ha : ¬ q.Allocated a) : ¬ p.Allocated a :=
  fun hp => ha (allocated_mono h hp)

/-- `scratch_alloc(88)`: a fresh 88-byte scratch block below the entry `scratch_ptr`. -/
theorem alloc88 {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {vs : List (ValueHOL 64)} {v : ValueHOL 64} {p : Ptrs}
    (hR : (fun vs s r t => Good (some r) → ∀ n p, vs = [.val (.word n)] → ptrsOf s = some p →
      p.Ordered → t.memory = s.memory ∧ (∀ g, g ≠ MemSafe.Region.scratch.global →
        t.globals.lookup g = s.globals.lookup g) ∧ ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧
        p.Mono p' ∧ ∀ v, r = .returned v → ∃ q : BitVec 64, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
          MemSafe.Region.scratch.Live p' q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a →
            a < q.toNat + n.toNat → ¬ p.Allocated a :
      List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop) vs
        (callEntryStateHOLFinite s callee) (.returned v) st)
    (hvs : evs s [cw 88] = some vs) (hp : ptrsOf s = some p) (hord : p.Ordered) :
    st.memory = s.memory ∧ ∃ p' : Ptrs, ptrsOf st = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
      ∃ q : BitVec 64, v = .val (.word q) ∧ p'.sp ≤ q.toNat ∧ q.toNat + 88 ≤ p.sp ∧
        ∀ a : Nat, q.toNat ≤ a → a < q.toNat + 88 → ¬ p.Allocated a := by
  rw [evs_cons (ev_cw _ 88) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hm, -, p', hp', hord', hmono, hq⟩ := hR (by simp [Good]) _ p rfl hp hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  refine ⟨hm, p', hp', hord', hmono, q, rfl, hl1, ?_, fun a h1 h2 => hfree a h1 (by omega)⟩
  by_contra hlt
  have := hfree (q.toNat + 87) (by omega) (by omega)
  apply this
  right; right
  constructor <;> omega

/-- A store at `q + k` inside a block fresh with respect to `ps`, which `p` precedes. -/
theorem tk2_upd {p ps : Ptrs} {M0 Ms : Mem} {t : State σ} (h1 : Tk p M0 t) (h2 : Tk ps Ms t)
    (hpps : p.Mono ps) {q : BitVec 64} {n k : Nat} (hfr : ∀ a, q.toNat ≤ a → a < q.toNat + n → ¬ ps.Allocated a)
    (hk : k < n) (hq : q.toNat + n < 2 ^ 64) (x : HolWordLab 64) :
    Tk p M0 { t with memory := upd t.memory (q + BitVec.ofNat 64 k) x } ∧
      Tk ps Ms { t with memory := upd t.memory (q + BitVec.ofNat 64 k) x } := by
  have e : (q + BitVec.ofNat 64 k).toNat = q.toNat + k := toNat_add_lt (by omega)
  have ha := hfr (q + BitVec.ofNat 64 k).toNat (by omega) (by omega)
  exact ⟨tk_upd h1 (not_alloc_of hpps ha) x, tk_upd h2 ha x⟩

theorem rd_upd_ne {M : Mem} {a b : BitVec 64} {v : BitVec 64} (h : b ≠ a) :
    rd (upd M a (.word v)) b = rd M b := by rw [rd_upd, if_neg h]

theorem rd_upd_eq {M : Mem} {a b : BitVec 64} {v : BitVec 64} (h : b = a) :
    rd (upd M a (.word v)) b = v := by rw [rd_upd, if_pos h]

/-- **The leaf return.** -/
theorem ds_leafRet {H : Nat} {vs : List (ValueHOL 64)} {p ps : Ptrs} {M0 Ms : Mem} {t0 : State σ}
    {e B Cc : BitVec 64} {q' : Ptrs}
    (hlf : t0.locals.lookup (nm "lf") = some (.val (.word e)))
    (hpl : t0.locals.lookup (nm "p") = some (.val (.word B)))
    (hnl : t0.locals.lookup (nm "n") = some (.val (.word Cc)))
    (hq0 : ptrsOf t0 = some q') (hTk : Tk p M0 t0) (hTks : Tk ps Ms t0) (hpps : p.Mono ps)
    (hfr : ∀ a, e.toNat ≤ a → a < e.toNat + 64 → ¬ ps.Allocated a) (he64 : e.toNat + 64 < 2 ^ 64)
    (he1 : p.hp ≤ e.toNat) (he2 : e.toNat + 64 ≤ q'.hp) :
    Hoare σ X (fun t => t = t0)
      (.seq (stk (nm "lf") 8 (lv (nm "p")))
        (.seq (stk (nm "lf") 16 (lv (nm "n"))) (.return (.rstruct [cw 0, lv (nm "lf")]))))
      (fun r t => r ≠ none ∧ DQ H vs p M0 r t) := by
  unfold stk
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hlf 8) (ev_lw hpl)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hlf 16) (ev_lw hnl)) ?_
  have t1 := tk2_upd hTk hTks hpps hfr (k := 8) (by decide) he64 (.word B)
  have t2 := tk2_upd t1.1 t1.2 hpps hfr (k := 16) (by decide) he64 (.word Cc)
  refine dq_return (fun t ht => by subst ht; exact ev_rstruct (evs_cons (ev_cw _ 0)
      (evs_cons (ev_lw hlf) evs_nil))) (fun t ht => by subst ht; exact t2.1) ?_
  intro t ht q hq _
  subst ht
  have hq' : some q = some q' := hq.symm.trans ((ptrsOf_frame rfl).trans hq0)
  cases hq'
  exact ⟨0, e, rfl, fun _ => Or.inr ⟨he1, by omega⟩, fun h => absurd rfl h⟩

theorem recW_ext {M : Mem} {q A : BitVec 64} {L U : Nat} (h8 : rd M (q + 8) = 1)
    (h24 : rd M (q + 24) = A) (hA : L ≤ A.toNat) (hA32 : A.toNat + 32 ≤ U) (hsl : SLen M A 2 L) :
    RecW M L U q :=
  ⟨by rw [h24]; exact hA, fun _ => ⟨by rw [h24]; exact hA32, by rw [h24]; exact hsl⟩,
    fun h => absurd h8 h⟩

theorem recW_br {M : Mem} {q A Bn : BitVec 64} {L U : Nat} (h8 : rd M (q + 8) = 2)
    (h16 : rd M (q + 16) = Bn) (h24 : rd M (q + 24) = A) (h32 : rd M (q + 32) = 0)
    (hA : L ≤ A.toNat) (hAB : A.toNat + 272 ≤ Bn.toNat) (hB : Bn.toNat + 176 ≤ U)
    (hsl : SLen M A 17 L) : RecW M L U q :=
  ⟨by rw [h24]; exact hA, fun h => absurd (h8.symm.trans h) (by decide),
    fun _ => ⟨by rw [h24, h16]; exact hAB, by rw [h16]; exact hB, by rw [h32]; decide,
      by rw [h24]; exact hsl⟩⟩

/-- **The extension record return.** -/
theorem ds_extRec {H : Nat} {vs : List (ValueHOL 64)} {p ps : Ptrs} {M0 Ms : Mem} {t0 : State σ}
    {q A B Cc c0 c1 c2 : BitVec 64} {q' : Ptrs}
    (hrec : t0.locals.lookup (nm "rec") = some (.val (.word q)))
    (harr : t0.locals.lookup (nm "arr") = some (.val (.word A)))
    (hpl : t0.locals.lookup (nm "p") = some (.val (.word B)))
    (hnl : t0.locals.lookup (nm "n") = some (.val (.word Cc)))
    (hcn : t0.locals.lookup (nm "cn") = some (wv [c0, c1, c2]))
    (hq0 : ptrsOf t0 = some q') (hTk : Tk p M0 t0) (hTks : Tk ps Ms t0) (hpps : p.Mono ps)
    (hfr : ∀ a, q.toNat ≤ a → a < q.toNat + 88 → ¬ ps.Allocated a) (hq64 : q.toNat + 88 < 2 ^ 64)
    (hq1 : q'.sp ≤ q.toNat) (hq2 : q.toNat + 88 ≤ p.sp)
    (hA : p.hp ≤ A.toNat) (hAb : heapBase ≤ A.toNat) (hA32 : A.toNat + 32 ≤ ps.hp)
    (hpsh : ps.hp ≤ 2 ^ 64) (hHp : H ≤ p.hp) (hsl : SLen Ms A 2 H) :
    Hoare σ X (fun t => t = t0) dsExtRec (fun r t => r ≠ none ∧ DQ H vs p M0 r t) := by
  have hc0 : ev t0 (.rfield 0 (lv (nm "cn"))) = some (.val (.word c0)) := ev_rfield_w hcn rfl
  have hc1 : ev t0 (.rfield 1 (lv (nm "cn"))) = some (.val (.word c1)) := ev_rfield_w hcn rfl
  unfold dsExtRec stk
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 8) (ev_cw _ 1)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 24) (ev_lw harr)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 48) (ev_lw hpl)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 56) (ev_lw hnl)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 64) hc0) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 72) hc1) ?_
  have t1 := tk2_upd hTk hTks hpps hfr (k := 8) (by decide) hq64 (.word (BitVec.ofNat 64 1))
  have t2 := tk2_upd t1.1 t1.2 hpps hfr (k := 24) (by decide) hq64 (.word A)
  have t3 := tk2_upd t2.1 t2.2 hpps hfr (k := 48) (by decide) hq64 (.word B)
  have t4 := tk2_upd t3.1 t3.2 hpps hfr (k := 56) (by decide) hq64 (.word Cc)
  have t5 := tk2_upd t4.1 t4.2 hpps hfr (k := 64) (by decide) hq64 (.word c0)
  have t6 := tk2_upd t5.1 t5.2 hpps hfr (k := 72) (by decide) hq64 (.word c1)
  refine dq_return (fun t ht => by subst ht; exact ev_rstruct (evs_cons (ev_cw _ 1)
      (evs_cons (ev_lw hrec) evs_nil))) (fun t ht => by subst ht; exact t6.1) ?_
  intro t ht q3 hq _
  have h8 : rd t.memory (q + 8) = 1 := by
    rw [ht]; dsimp only
    rw [rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega),
      rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_eq (by rfl)]; rfl
  have h24 : rd t.memory (q + 24) = A := by
    rw [ht]; dsimp only
    rw [rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega),
      rd_upd_ne (by bv_omega), rd_upd_eq (by rfl)]
  have htk : Tk ps Ms t := by rw [ht]; exact t6.2
  have hqt : ptrsOf t = some q' := by rw [ht]; exact (ptrsOf_frame rfl).trans hq0
  rw [hqt] at hq
  cases hq
  obtain ⟨q4, hq4, -, hm', -⟩ := id htk
  rw [hqt] at hq4
  cases hq4
  have hsl' : SLen t.memory A 2 H := slen_tk htk hsl hAb (by omega) hpsh
  exact ⟨1, q, rfl, fun h => absurd h (by decide), fun _ => ⟨hq1, hq2, by rw [h24]; exact hA,
    recW_ext h8 h24 (by omega) (by have := hm'.1; omega) hsl', fun h => absurd h8 h⟩⟩

/-- **The branch record return.** -/
theorem ds_brRec {H : Nat} {vs : List (ValueHOL 64)} {p ps : Ptrs} {M0 Ms : Mem} {t0 : State σ}
    {q A B Cc Bn : BitVec 64} {q' : Ptrs}
    (hrec : t0.locals.lookup (nm "rec2") = some (.val (.word q)))
    (hbr : t0.locals.lookup (nm "br") = some (.val (.word Bn)))
    (harr : t0.locals.lookup (nm "arr") = some (.val (.word A)))
    (hpl : t0.locals.lookup (nm "p") = some (.val (.word B)))
    (hnl : t0.locals.lookup (nm "n") = some (.val (.word Cc)))
    (hq0 : ptrsOf t0 = some q') (hTk : Tk p M0 t0) (hTks : Tk ps Ms t0) (hpps : p.Mono ps)
    (hfr : ∀ a, q.toNat ≤ a → a < q.toNat + 88 → ¬ ps.Allocated a) (hq64 : q.toNat + 88 < 2 ^ 64)
    (hq1 : q'.sp ≤ q.toNat) (hq2 : q.toNat + 88 ≤ p.sp)
    (hA : p.hp ≤ A.toNat) (hAb : heapBase ≤ A.toNat) (hA272 : A.toNat + 272 ≤ ps.hp)
    (hAB : A.toNat + 272 ≤ Bn.toNat) (hB : Bn.toNat + 176 ≤ q'.hp)
    (hpsh : ps.hp ≤ 2 ^ 64) (hHp : H ≤ p.hp) (hsl : SLen Ms A 17 H) :
    Hoare σ X (fun t => t = t0) dsBrRec (fun r t => r ≠ none ∧ DQ H vs p M0 r t) := by
  unfold dsBrRec stk
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 8) (ev_cw _ 2)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 16) (ev_lw hbr)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 24) (ev_lw harr)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 32) (ev_cw _ 0)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 40) (ev_cw _ 0)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 48) (ev_lw hpl)) ?_
  refine hoare_seq_eq (hoare_store_eq (ev_add_cw hrec 56) (ev_lw hnl)) ?_
  have t1 := tk2_upd hTk hTks hpps hfr (k := 8) (by decide) hq64 (.word (BitVec.ofNat 64 2))
  have t2 := tk2_upd t1.1 t1.2 hpps hfr (k := 16) (by decide) hq64 (.word Bn)
  have t3 := tk2_upd t2.1 t2.2 hpps hfr (k := 24) (by decide) hq64 (.word A)
  have t4 := tk2_upd t3.1 t3.2 hpps hfr (k := 32) (by decide) hq64 (.word (BitVec.ofNat 64 0))
  have t5 := tk2_upd t4.1 t4.2 hpps hfr (k := 40) (by decide) hq64 (.word (BitVec.ofNat 64 0))
  have t6 := tk2_upd t5.1 t5.2 hpps hfr (k := 48) (by decide) hq64 (.word B)
  have t7 := tk2_upd t6.1 t6.2 hpps hfr (k := 56) (by decide) hq64 (.word Cc)
  refine dq_return (fun t ht => by subst ht; exact ev_rstruct (evs_cons (ev_cw _ 1)
      (evs_cons (ev_lw hrec) evs_nil))) (fun t ht => by subst ht; exact t7.1) ?_
  intro t ht q3 hq _
  have h8 : rd t.memory (q + 8) = 2 := by
    rw [ht]; dsimp only
    rw [rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega),
      rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega),
      rd_upd_eq (by rfl)]; rfl
  have h16 : rd t.memory (q + 16) = Bn := by
    rw [ht]; dsimp only
    rw [rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega),
      rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_eq (by rfl)]
  have h24 : rd t.memory (q + 24) = A := by
    rw [ht]; dsimp only
    rw [rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega),
      rd_upd_ne (by bv_omega), rd_upd_eq (by rfl)]
  have h32 : rd t.memory (q + 32) = 0 := by
    rw [ht]; dsimp only
    rw [rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega), rd_upd_ne (by bv_omega),
      rd_upd_eq (by rfl)]; rfl
  have htk : Tk ps Ms t := by rw [ht]; exact t7.2
  have hqt : ptrsOf t = some q' := by rw [ht]; exact (ptrsOf_frame rfl).trans hq0
  rw [hqt] at hq
  cases hq
  have hsl' : SLen t.memory A 17 H := slen_tk htk hsl hAb (by omega) hpsh
  exact ⟨1, q, rfl, fun h => absurd h (by decide), fun _ => ⟨hq1, hq2, by rw [h24]; exact hA,
    recW_br h8 h16 h24 h32 (by omega) hAB hB hsl', fun _ => h32⟩⟩

end InitECandidate.Solver.Spec.Mpt.Dec
