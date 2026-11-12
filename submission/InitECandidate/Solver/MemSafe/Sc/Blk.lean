import InitECandidate.Solver.MemSafe.Sc.Adopt
import InitECandidate.Solver.MemSafe.Sc.Env
import InitECandidate.Solver.MemSafe.Node.BlkObj
import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# The fresh `tCSL` block of `set_code`: stores and adoption

* `BlkI`: the block `[Ar, Ar + 16)` is fresh at the explicit ghost typing `Γ` / pointers `q`, with
  the contents `SpC` written so far.
* `st_blk`: a one-word store into the block (`Node.hoareG_stSlot`, with explicit `Γ`, `q`
  and an extra memory-independent invariant `R`, which carries the checker's invariants).
* `adopt_sound`: the block with `rd (Ar + 8) ≤ 2^32` becomes a `tCSL` object `Γ ++ [⟨Ar, tCSL, 16⟩]`:
  `Heap` (`heap_adopt2`, the hook `CslW` from the record table), the temporaries (the dead one
  is dropped, the live ones are disjoint from the block), the locals.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-- The content the block is required to have: slot 1 (the length) is at most `2^32`. -/
def SpC (i : Nat) (x : BitVec 64) : Prop := i = 1 → x.toNat ≤ 2 ^ 32

/-- The length fact on the locals. -/
def LenL (l : HolFiniteMapExact MlS (ValueHOL 64)) : Prop :=
  ∃ n : BitVec 64, l.lookup (nm "code_len") = some (.val (.word n)) ∧ n.toNat ≤ 2 ^ 32

/-- The fresh block `[Ar, Ar + 16)` at the explicit `Γ`, `q`, with the slots `D` written. -/
def BlkI (a : Act σ) (Γ : Gam) (q : Ptrs) (Ar : BitVec 64) (D : Nat → Prop) (t : State σ) : Prop :=
  Heap a Γ q t ∧ BlkF Ar 16 Γ q ∧ (∀ x : BitVec 64, Overlap Ar.toNat 16 x → ¬ a.p0.Allocated x.toNat) ∧
    ∀ i, D i → SpC i (rd t.memory (Ar + BitVec.ofNat 64 (8 * i)))

/-- **A one-word store into slot `j` of the block**, keeping a memory-independent invariant `R`. -/
theorem st_blk {a : Act σ} (ha : ActOK a X) {Γ : Gam} {q : Ptrs} {Ar : BitVec 64}
    {D : Nat → Prop} {R : State σ → Prop}
    (hR : ∀ (t : State σ) (mem : Mem), R t → R { t with memory := mem }) {j : Nat}
    {ea ev' : ExpHOL 64} (hrng : Ar.toNat + 16 < 2 ^ 64) (hD : ∀ i, D i → 8 * i + 8 ≤ 16)
    (hj : 8 * j + 8 ≤ 16)
    (haddr : ∀ s : State σ, InCtx s X → R s → ∀ w, ev s ea = some (.val (.word w)) →
      w = Ar + BitVec.ofNat 64 (8 * j))
    (hval : ∀ s : State σ, InCtx s X → R s → ∀ v, ev s ev' = some v →
      ∃ x, v = .val (.word x) ∧ SpC j x) :
    HoareG σ X (fun s => BlkI a Γ q Ar D s ∧ R s) (.store ea ev')
      (fun r t => (r = none → BlkI a Γ q Ar (fun i => D i ∨ i = j) t ∧ R t) ∧
        ∀ r', r = some r' → False) := by
  refine hoareG_store fun s hs ⟨⟨hh, hB, hn, hmem⟩, hRs⟩ w v mem hw hv hst => ?_
  obtain ⟨x, rfl, hx⟩ := hval s hs hRs v hv
  have hws := haddr s hs hRs w hw
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) = [HolWordLab.word x] := by
    simp [flattenHOL]
  have hmem' := Struct.store_word hst
  have hst1 := hst
  rw [hf] at hst1
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst1
  have hw8 : w.toNat % 8 = 0 := ha.hal w (hs.2.1 ▸ hdom)
  have hwn : w.toNat = Ar.toNat + 8 * j := by rw [hws]; exact Node.cell_toNat_bv hrng hj
  have hov : Overlap Ar.toNat 16 w := ⟨hw8, by omega, by omega⟩
  refine ⟨fun _ => ⟨⟨?_, hB, hn, ?_⟩, hR _ _ hRs⟩, fun r' h => absurd h (by simp)⟩
  · exact heap_store_buf ha hh hm (fun y hy => hy ▸ Or.inr (hB _ hov).1)
      (fun y hy => hy ▸ Or.inr (Or.inr (Or.inl (hn _ hov))))
  · intro i hi
    show SpC i (rd mem (Ar + BitVec.ofNat 64 (8 * i)))
    rw [hmem', Struct.rd_upd]
    by_cases hc : Ar + BitVec.ofNat 64 (8 * i) = w
    · have hij : i = j := by
        rcases hi with hi | hi
        · exact Node.cell_inj_bv hrng (hD i hi) hj (hc.trans hws)
        · exact hi
      subst hij
      rw [if_pos hc]
      exact hx
    · rw [if_neg hc]
      refine hmem i ?_
      rcases hi with hi | rfl
      · exact hi
      · exact absurd hws.symm hc


/-! ## Adoption -/

theorem csl_facts : (Types.guestC.ty Types.tCSL).region = .heap ∧
    (∀ k, (Types.guestC.ty Types.tCSL).slot k = .prot ∨ (Types.guestC.ty Types.tCSL).slot k = .scalar) ∧
    Types.guestC.tags.lookup Types.tCSL = none ∧ (Types.guestC.ty Types.tCSL).minSz ≤ 16 := by
  refine ⟨by rw [Types.ty_CSL]; rfl, ?_, by decide, by rw [Types.ty_CSL]; decide⟩
  intro k
  rw [Types.ty_CSL]
  unfold Types.cslTy TyD.slot
  rcases k with _ | _ | k <;> simp

/-- The hook of the adopted `tCSL` object. -/
theorem wf_csl {Γ : Gam} {u : State σ} {Ar : BitVec 64} (hOK : Hooks.GamOK Γ)
    (hmem : (⟨Ar, Types.tCSL, 16⟩ : Obj) ∈ Γ) (hhi : Ar.toNat + 16 ≤ heapEnd)
    (hlen : (rd u.memory (Ar + BitVec.ofNat 64 8)).toNat ≤ 2 ^ 32) :
    (Hooks.guestHooksR (σ := σ)).wf Γ u (⟨Ar, Types.tCSL, 16⟩ : Obj) := by
  refine ⟨Hooks.recBase_triv Γ u _ Hooks.recTy_tCSL, fun e he hty => ?_⟩
  have h1 : e.ty = Types.tCSL := hty
  have h2 := Hooks.recTab_csl he h1
  subst h2
  exact ⟨hmem, hOK, by simp, by simp [Obj.lo]; omega, by
    show (rd u.memory ((⟨Ar, Types.tCSL, 16⟩ : Obj).cell 1)).toNat ≤ 2 ^ 32
    exact hlen⟩

/-- A temporary other than the block stays valid when the block becomes an object. -/
theorem tmpOK_adopt {a : Act σ} {Γ : Gam} {q : Ptrs} {td : TD} {qk Ar : BitVec 64}
    (hK : ∀ rg, td.kind ≠ .win rg) (h : TmpOK a Γ q td qk)
    (hD : ∀ x, Overlap qk.toNat td.size x → ¬ Overlap Ar.toNat 16 x) :
    TmpOK a (Γ ++ [(⟨Ar, Types.tCSL, 16⟩ : Obj)]) q td qk := by
  obtain ⟨hb, hk⟩ := h
  refine ⟨fun x hx => ?_, ?_⟩
  · rcases hb x hx with ⟨o, ho, k, hk', hsc, he⟩ | ⟨hni, hal⟩
    · exact Or.inl ⟨o, List.mem_append_left _ ho, k, hk', hsc, he⟩
    · refine Or.inr ⟨?_, hal⟩
      rintro ⟨o, ho, h1, h2⟩
      rcases List.mem_append.mp ho with ho | ho
      · exact hni ⟨o, ho, h1, h2⟩
      · simp only [List.mem_singleton] at ho
        subst ho
        unfold Obj.lo at h1
        unfold Obj.hi at h2
        simp only at h1 h2
        exact hD x hx ⟨hx.1, by omega, by omega⟩
  · cases hkd : td.kind with
    | fresh => rw [hkd] at hk; simpa [hkd] using hk
    | arg i => rw [hkd] at hk; simpa [hkd] using hk
    | win rg => exact absurd hkd (hK rg)

theorem a2T : A2.T = [some ⟨20, .arg 0⟩, some ⟨32, .fresh⟩] := by rfl
theorem a3T : A3.T = A2.T ++ [some ⟨16, .fresh⟩] := by rfl
theorem ajT : AJ.T = A2.T ++ [none] := by rfl

/-- **Adopting the block.** The block `[Ar, Ar + 16)` with `rd (Ar + 8) ≤ 2^32` becomes a `tCSL`
object: the checker's invariant for `AJ` (`sl : gp tCSL 0`, the block's temporary dead) at
`Γ ++ [⟨Ar, tCSL, 16⟩]`. -/
theorem adopt_sound {a : Act σ} (ha : ActOK a X) (hC : a.C = upg Types.guestC scCaps)
    (hH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    {Γ : Gam} {q : Ptrs} {Θ : List (BitVec 64 × Nat)} {Ar : BitVec 64} {t : State σ}
    (hh : Heap a Γ q t) (hT : TempsOK a A3 Γ q Θ) (hl : LocalsOK A3 Γ Θ t)
    (hB : BlkF Ar 16 Γ q) (hnA : ∀ x : BitVec 64, Overlap Ar.toNat 16 x → ¬ a.p0.Allocated x.toNat)
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 16 ≤ heapEnd) (h8 : Ar.toNat % 8 = 0)
    (hsl : t.locals.lookup (nm "sl") = some (.val (.word Ar)))
    (hcnt : (rd t.memory (Ar + BitVec.ofNat 64 8)).toNat ≤ 2 ^ 32)
    (hDis : ∀ (k : Nat) (td : TD) (qk : BitVec 64), A2.T[k]? = some (some td) →
      Θ[k]? = some (qk, td.size) → ∀ x, Overlap qk.toNat td.size x → ¬ Overlap Ar.toNat 16 x) :
    Ext Γ (Γ ++ [(⟨Ar, Types.tCSL, 16⟩ : Obj)]) ∧
      IG a AJ (Γ ++ [(⟨Ar, Types.tCSL, 16⟩ : Obj)]) Θ t := by
  have hMono : HooksMono a.C a.H := by rw [hC, hH]; exact Hooks.guestHooksR_mono
  obtain ⟨hf1, hf2, hf3, hf4⟩ := csl_facts
  obtain ⟨hExt, hh2⟩ := heap_adopt2 ha hMono hh.2.2.2.1 hh (Ar := Ar) (n := 16) (ty := Types.tCSL)
    (by rw [hC]; exact hf1) (by rw [hC]; exact hf2) (by rw [hC]; exact hf3) (by omega) (by omega)
    (by rw [hC]; exact hf4) hs h8 hB hnA hgr
    (fun hL => by
      rw [hH]
      exact wf_csl (Hooks.gamOK_of_layout (hC ▸ hL)) (List.mem_append_right _ (List.mem_singleton_self _))
        hs.2 hcnt)
  have hext : Ext Γ (Γ ++ [(⟨Ar, Types.tCSL, 16⟩ : Obj)]) := Struct.ext_snoc Γ _
  refine ⟨hext, q, hh2, ?_, ?_⟩
  · refine ⟨?_, fun k td hk => ?_⟩
    · have hlen : Θ.length = A3.T.length := hT.1
      rw [a3T] at hlen
      rw [ajT]
      simpa using hlen
    rw [ajT, a2T] at hk
    rcases k with _ | _ | k
    · simp at hk
      subst hk
      obtain ⟨qk, hqk, hok⟩ := hT.2 0 ⟨20, .arg 0⟩ (by simp [a3T, a2T])
      exact ⟨qk, hqk, tmpOK_adopt (by simp) hok
        (hDis 0 _ qk (by simp [a2T]) hqk)⟩
    · simp at hk
      subst hk
      obtain ⟨qk, hqk, hok⟩ := hT.2 1 ⟨32, .fresh⟩ (by simp [a3T, a2T])
      exact ⟨qk, hqk, tmpOK_adopt (by simp) hok
        (hDis 1 _ qk (by simp [a2T]) hqk)⟩
    · rcases k with _ | k <;> simp at hk
  · intro y av hy
    by_cases hyx : y = nm "sl"
    · subst hyx
      unfold AJ at hy
      rw [lookup_setL_eq] at hy
      simp only [Option.some.injEq] at hy
      subst hy
      refine ⟨_, hsl, Ar, rfl, ⟨Ar, Types.tCSL, 16⟩,
        List.mem_append_right _ (List.mem_singleton_self _), rfl, by simp⟩
    · unfold AJ at hy
      rw [lookup_setL_ne hyx] at hy
      obtain ⟨v, hv, hok⟩ := hl y av hy
      exact ⟨v, hv, vok_ext hext hok⟩

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.st_blk
#print axioms InitECandidate.Solver.MemSafe.Sc.adopt_sound
