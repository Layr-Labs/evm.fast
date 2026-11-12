import InitECandidate.Solver.MemSafe.Dn.StepMid

set_option autoImplicit false

/-!
# `_decode_step` at the final hook family

**`sumSpecA_decode_step_G`**: under `DsPre` (the input slice lies in the heap below `heap_ptr`),
every good result keeps `G` with `ScrOld`, and a return satisfies `DsRx` (a node result fits
`nodeU`; a record result is a fresh 88-byte scratch record, a branch record holding an `NBRANCH`
object). The location facts that discharge `compact_to_nibbles`' `CtnPre` come from the cost
lane's functional specs of `rlp_decode_fully` (`RdfQ`), `rlp_list_to_slices` (`SlQ`) and
`rlp_item` (`RiQ`).
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type}

def L0 (P N : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "n") = some (.val (.word N))

theorem l0_set {P N : BitVec 64} {s : State σ} (h : L0 P N s.locals) {x : MlS}
    (h1 : x ≠ nm "p") (h2 : x ≠ nm "n") (v : ValueHOL 64) (L : LocalsH) (hL : L = s.locals) :
    L0 P N (setVarHOLFinite x v { s with locals := L }).locals := by
  refine ⟨?_, ?_⟩ <;> rw [lk_set_ne _ _ (by intro e; subst e; first | exact h1 rfl | exact h2 rfl)] <;>
    show L.lookup _ = _ <;> rw [hL]
  · exact h.1
  · exact h.2

/-- The located `it`. -/
def LIt (P N : BitVec 64) (m : LocalsH) : Prop :=
  L0 P N m ∧ ∃ A B C D : BitVec 64,
    m.lookup (nm "it") = some (.rStruct [.val (.word A), .val (.word B), .val (.word C), .val (.word D)]) ∧
    P.toNat ≤ B.toNat ∧ B.toNat + C.toNat ≤ P.toNat + N.toNat

theorem p_n_lt {P N : BitVec 64} {Γ : Gam} {q : Ptrs} {M : Mem} (hq : q.Ordered)
    (h : E0 P N Γ q M) : P.toNat + N.toNat < 2 ^ 32 := by
  have := hq.2.1
  have := h.2.1
  simp only [heapEnd] at *
  omega

/-- The slice array that `rlp_list_to_slices` allocates: outside `Γ'`, allocated, inside the entry slice. -/
theorem ea_of_slq {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r)
    (hg : sg'.grows = false) {P N Ar Cnt B C : BitVec 64} (hE : E0 P N Γ q s.memory)
    (hPB : P.toNat ≤ B.toNat) (hBC : B.toNat + C.toNat ≤ P.toNat + N.toNat)
    (hfresh : 0 < Cnt.toNat → q.hp ≤ Ar.toNat) (hend : Ar.toNat + 16 * Cnt.toNat ≤ q'.hp)
    (hS : Spec.Mpt.Dec.SIn st.memory Ar Cnt.toNat B.toNat (B.toNat + C.toNat)) :
    EA P N Ar Cnt.toNat Γ' q' st.memory := by
  have hord := heap_ord co.heap0
  have hord' := heap_ord co.heap
  obtain ⟨p1, hp1, -, hL, -⟩ := co.heap0.1
  rw [co.heap0.2.1] at hp1
  cases hp1
  have hE' := Hooks.heapEnd_lt
  have hq'e : q'.hp ≤ heapEnd := hord'.2.1
  refine ⟨e0_mono hE co.ext co.mono, ⟨fun x h1 h2 => ?_, le_trans hend hq'e, Spec.Mpt.Dec.sIn_mono hS (by omega) (by omega)⟩⟩
  have hc : 0 < Cnt.toNat := by omega
  have hf := hfresh hc
  have hb := hE.1
  have ho1 := hord.1
  refine ⟨fun hin => ?_, by unfold Ptrs.Allocated; left; omega⟩
  have hal := HtabEntries.alloc_of_inObj hord hL (co.nfp hg) hin
  unfold Ptrs.Allocated at hal
  obtain ⟨o1, o2, o3, o4, o5, -⟩ := hord
  omega

def W0 : ValueHOL 64 := .val (.word (BitVec.ofNat 64 0))

/-- **`_decode_step`'s summary** at `guestHooksR`. -/
theorem sumSpecA_decode_step_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_decode_step") dsSig DsPre
      (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → DsRx vs p0 Γ' p' t.memory v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := DsRx) hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, A, B, C, rfl, -, -, -, hA, hB, hC'⟩ :=
    Spec.lookupCode_three Spec.Mpt.Dec.code_decode_step (by decide) (by decide) (by decide) hl
  obtain ⟨db, P, N, hvs, hPb, ⟨pq, hpq, hPN⟩, hVP⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  rw [hh.2.1] at hpq
  cases hpq
  refine hoareG_conseq (P := GI (aDS [.val (.word db), .val (.word P), .val (.word N)] s0 Γ0 p0)
      (L0 P N) (E0 P N))
    (Q := GP (aDS [.val (.word db), .val (.word P), .val (.word N)] s0 Γ0 p0) (fun _ => False)
      (fun _ _ _ => True) (RvDS (aDS [.val (.word db), .val (.word P), .val (.word N)] s0 Γ0 p0)))
    ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨⟨by rw [hloc]; exact hB, by rw [hloc]; exact hC'⟩, Γ0, p0, ext_refl _, hh, scrOld_refl _,
      hPb, hPN, hVP⟩
  · intro r t _ _ h
    exact gp_final h
  unfold Spec.Mpt.Dec.dsBody
  let Lit0 : LocalsH → Prop := fun m => L0 P N m ∧ m.lookup (nm "it") = some (.rStruct [W0, W0, W0, W0])
  refine gp_dec ha.hH (L1 := Lit0) (L2 := fun _ => False) (fun s _ hL v hv => ?_) ?_
    (fun _ _ _ h => h.elim)
  · rw [ev_rstruct (evs_cons (ev_cw s 0) (evs_cons (ev_cw s 0) (evs_cons (ev_cw s 0)
      (evs_cons (ev_cw s 0) evs_nil))))] at hv
    cases hv
    exact ⟨l0_set hL (by decide) (by decide) _ _ rfl, by simp [setVarHOLFinite, FUPDATE]; rfl⟩
  refine gp_dec ha.hH (L1 := Lit0) (L2 := fun _ => False) (fun s _ hL v hv =>
    ⟨l0_set hL.1 (by decide) (by decide) _ _ rfl, by rw [lk_set_ne _ _ (by decide)]; exact hL.2⟩) ?_
    (fun _ _ _ h => h.elim)
  refine gp_seq (L := LIt P N) (E := E0 P N) ?_ ?_
  · unfold Spec.Mpt.Dec.dsCall
    refine gp_try ha (sumA_of_csumm rdf_R) (Spec.Mpt.Leaves.freshFoot_rlp_decode_fully hX)
      (by simp) (by simp) (by decide) (Lh := L0 P N) (Eh := E0 P N)
      (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
        fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
        fun v hv => ⟨e0_mono hEs co.ext co.mono, fun hval => ?_⟩,
        fun v hv => ⟨e0_mono hEs co.ext co.mono, l0_set hL.1 (by decide) (by decide) v _ rfl⟩⟩)
      (hoareG_pre (gp_fail ha 3) (fun s _ h => h))
    subst hv
    have hsh := Spec.Mpt.Dec.shape_valid hL.2 hval
    have e4 : shapeOfHOLExact (ValueHOL.rStruct [W0, W0, W0, W0] : ValueHOL 64) = Spec.Mpt.Dec.sh4 := by
      simp [shapeOfHOLExact, W0, Spec.Mpt.Dec.sh4]
    rw [e4] at hsh
    obtain ⟨a0, b0, c0, d0, rfl⟩ := w4_of_sh hsh
    rw [evs_cons (by rw [ev_lv]; exact hL.1.1) (evs_cons (by rw [ev_lv]; exact hL.1.2) evs_nil)] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    obtain ⟨p', -, -, -, -, hQ⟩ := hLc _ rfl q hpe (heap_ord co.heap0) trivial
    obtain ⟨h1, h2⟩ := hQ P N a0 b0 c0 d0 rfl rfl (by have := p_n_lt (heap_ord co.heap0) hEs; omega)
    exact ⟨l0_set hL.1 (by decide) (by decide) _ _ rfl, a0, b0, c0, d0,
      by simp [setVarHOLFinite, FUPDATE], h1, h2⟩
  refine gp_seq (L := LIt P N) (E := E0 P N) ?_ ?_
  · unfold Spec.Mpt.Dec.dsHead
    refine hoareG_ite ?_ (gp_skip (fun s h => h.1))
    refine hoareG_pre (P := GI _ (LIt P N) (E0 P N)) ?_ (fun s _ h => h.1)
    refine gp_seq (L := LIt P N) (E := E0 P N) (hoareG_ite ?_ (gp_skip (fun s h => h.1)))
      (gp_fail ha 4)
    refine hoareG_pre (gp_ret ha.hH (fun s Γ q _ _ _ _ _ v hv => ⟨retOK_nil, ?_⟩)) (fun s _ h => h.1)
    obtain ⟨vs', rfl⟩ := ev_rstruct_hd2 hv (ev_cw s 0) (ev_cw s 0)
    intro d0 d1 hv'
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hv'
    obtain ⟨h0, h1, -⟩ := hv'
    subst h0 h1
    exact ⟨fun _ => Or.inl (by simp [nullMax]), fun h => absurd rfl h⟩
  refine gp_decCall ha (sumA_of_csumm rlts_R) (Spec.Mpt.Leaves.freshFoot_rlp_list_to_slices hX)
    (by simp) (by simp)
    (L1 := fun v m => (∃ Ar Cnt : BitVec 64, v = .rStruct [.val (.word Ar), .val (.word Cnt)]) ∧
      m.lookup (nm "sl") = some v ∧ L0 P N m)
    (E1 := fun v Γ q M => ∀ Ar Cnt : BitVec 64, v = .rStruct [.val (.word Ar), .val (.word Cnt)] →
      EA P N Ar Cnt.toNat Γ q M)
    (L2 := fun _ => False)
    (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
      fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
    (fun s st vs1 callee r Γ Γ' q q' _ hL hvs _ hEs hLc _ co => ⟨scrOld_nf0_co rfl co rfl,
      fun v hv _ Ar Cnt hv2 => ?_⟩)
    (fun s st v hL hsh => ⟨w2_of_sh hsh, by simp [setVarHOLFinite, FUPDATE],
      l0_set hL.1 (by decide) (by decide) v _ rfl⟩)
    ?_ (fun _ _ _ h => h.elim)
  · subst hv
    obtain ⟨hl0, A0, B0, C0, D0, hit, hPB, hBC⟩ := hL
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 1) hit rfl)
      (evs_cons (Spec.Mpt.Dec.ev_rfield_w (i := 2) hit rfl) evs_nil)] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
    have hlt := p_n_lt (heap_ord co.heap0) hEs
    obtain ⟨p', hp', -, -, -, hQ⟩ := hLc _ rfl q hpe (heap_ord co.heap0)
      ⟨B0, C0, rfl, by have := hEs.1; omega, q, hpe, by have := hEs.2.1; omega⟩
    obtain ⟨hfresh, hend, hSIn⟩ := hQ Ar Cnt hv2
    have hq' : p' = q' := by
      have := co.heap.2.1
      rw [hp'] at this
      exact Option.some.inj this
    subst hq'
    exact ea_of_slq co rfl hEs hPB hBC hfresh hend (hSIn B0 C0 rfl)
  intro v
  by_cases hw : ∃ Ar Cnt : BitVec 64, v = .rStruct [.val (.word Ar), .val (.word Cnt)]
  swap
  · exact hoareG_false fun s _ h => hw h.1.1
  obtain ⟨Ar, Cnt, rfl⟩ := hw
  refine hoareG_pre (dsSl_G (P := P) (N := N) (Ar := Ar) (Cnt := Cnt) ha)
    (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE'⟩ =>
      ⟨⟨hL.2.2.1, hL.2.2.2, hL.2.1⟩, Γ, q, he, hh, hsc, hE' Ar Cnt rfl⟩)

end InitECandidate.Solver.MemSafe.Dn
#print axioms InitECandidate.Solver.MemSafe.Dn.sumSpecA_decode_step_G
