import InitECandidate.Solver.MemSafe.Dhi.Code
import InitECandidate.Solver.MemSafe.Rec.AdoptNib
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `decode_host_input`: the summary

`sumSpecA_decode_host_input`: `SumSpecA … (nm "decode_host_input") dhSig` with a trivial `Pre`
(a `SummA`), where `dhSig = ⟨[], [fits (ptr tSI)], [], true⟩`.  The pieces:

* `precheck_host_ssz_header()`: the table summary `tab26[24]` (`⟨[], [], [], false⟩`);
* `input_blob()`: its capability summary (non-growing form) conjoined with the located spec
  `funSpec_input_blob_loc`: the block `[p, p + len + 8)` is fresh, so it is adopted as a `tVAL` object
  (`Rec.heap_adoptS`, the first `8 ⌊(len + 8) / 8⌋` bytes), which gives the `DsPre` of the next call
  (`heapBase ≤ p`, `p + len ≤ heapEnd`, `[p, p + len)` inside a `tVAL` object);
* `return decode_stateless_input(inp.0, inp.1)`: the hand summary with `Pre = DsPre`.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.Dhi
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tSI)
open InitECandidate.Solver.MemSafe.Rec (dsSig DsPre heap_callMP)

variable {σ : Type} {X : Ctx 64}

def dhSig : Sig := ⟨[], [.fits (.ptr tSI)], [], true⟩

/-- The post of the body: the activation invariant at every good non-abortive end, the result
fitting the signature. -/
def QF (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → ¬ Abortive r' → ∃ (Γ' : Gam) (p' : Ptrs), Ext a.Γ0 Γ' ∧ Heap a Γ' p' t ∧
    ∀ v, r' = .returned v → RetOK Γ' a.p0 p' a.vs a.sg.ret v

theorem qf_locals {a : Act σ} (hH : HooksLawful a.C a.H) {r : Option (PanSemResultExact 64)}
    {t : State σ} (L : LocalsH) (h : QF a r t) : QF a r { t with locals := L } :=
  fun r' hr hna => by
    obtain ⟨Γ, p, he, hh, hv⟩ := h r' hr hna
    exact ⟨Γ, p, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hv⟩

/-- A `RetOK` for a list of `fits` types does not depend on the allocator states or arguments. -/
theorem retOK_fits {Γ : Gam} {p1 p2 q1 q2 : Ptrs} {vs1 vs2 : List (ValueHOL 64)} {k : FK}
    {v : ValueHOL 64} (h : RetOK Γ p1 q1 vs1 [.fits k] v) : RetOK Γ p2 q2 vs2 [.fits k] v := by
  intro i r w hr hw
  have := h i r w hr hw
  rcases i with _ | i
  · simp at hr; subst hr; exact this
  · simp at hr

theorem sumSpecA_decode_host_input
    (hF : FoldOK σ X Types.guestC (Hooks.guestHooksR (σ := σ)))
    (htab : CTabSound σ X Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26)
    (hds : SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_stateless_input") dsSig DsPre
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True)) :
    SumSpecA σ X Types.guestC Hooks.guestHooksR (nm "decode_host_input") dhSig
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) := by
  have hX := hF.hX
  have hpc : CSumm σ X Types.guestC Hooks.guestHooksR (nm "precheck_host_ssz_header")
      ⟨[], [], [], false⟩ [] := ctab% htab
  have hib := csumm_input_blob (X := X) hF.hH hF.hC hF.hal hF.hAC hF.hNS hX false
  have hloc := funSpec_input_blob_loc (σ := σ) (X := X) hX
  refine Bn2.sumSpecA_of_heap hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc0 Γ0 p0 _ ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, -⟩ := lookupCode_gen code_decode_host_input hl
  have hvs : vs = [] := (List.length_eq_zero_iff.mp hlen.symm)
  subst hvs
  set a := actOf Types.guestC Hooks.guestHooksR dhSig [] [] s0 Γ0 p0 with hadef
  have hgr : a.sg.grows = true := rfl
  refine hoareG_conseq (P := PreH a (fun _ => True)) (Q := QF a) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨trivial, Γ0, p0, ext_refl _, hh⟩
  · intro r t _ _ h
    exact h
  unfold dhBody
  refine hoareG_seqSP (L := fun _ => True) ?_ (hoareG_callSP ha hpc (by simp) (by simp) ?_) ?_
  · intro r t _ h r' hr' hna
    obtain ⟨hab, hHH⟩ := h r' hr'
    obtain ⟨Γ, p, he, hh⟩ := hHH hna
    exact ⟨Γ, p, he, hh, fun v hv => absurd hv (Node.abn_ne_ret hab v)⟩
  · intro s _ _ Γ p _ _ vs hvs
    rw [evs_nil] at hvs
    cases hvs
    exact ⟨argsOK_any (by simp) rfl, fun x hx => absurd hx (argCells_any (by simp))⟩
  refine hoareG_decCall ((summ_funSpec hib).and hloc) ?_ ?_
  · intro s _ ⟨_, Γ, q, he, hh1⟩ vs hvs callee v st ⟨hR, hLc⟩ _ hsh
    rw [evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, hm2, -, hnfp2, -, -⟩ := Rec.heap_callM ha hh1 hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any (by simp [sigIB]) rfl) (by simp [sigIB]) (by simp [sigIB])
      (fun _ => hgr)
    obtain ⟨P, Lv, rfl, hP, hE, hL, hP8, hqP, p', hp', hle⟩ := hLc v rfl q hh1.2.1 (heap_ord hh1) trivial
    have hhs0 : Heap a Γ2 q2 (setVarHOLFinite (nm "inp")
        (.rStruct [.val (.word P), .val (.word Lv)]) { st with locals := s.locals }) :=
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2
    have hp'q : p' = q2 := Option.some.inj (hp'.symm.trans hh2.2.1)
    subst hp'q
    have hordq := heap_ord hh1
    obtain ⟨p1, hp1, -, hLay, -⟩ := hh1.1
    have hqp : p1 = q := Option.some.inj (hp1.symm.trans hh1.2.1)
    subst hqp
    have hnf := hnfp2 rfl
    have hse : heapEnd < 2 ^ 64 := by decide
    have hm0 := hh1.2.2.1
    have ho0 := ha.hord0
    have hn1 : Lv.toNat + 1 ≤ 8 * ((Lv.toNat + 8) / 8) := by omega
    have hn2 : 8 * ((Lv.toNat + 8) / 8) ≤ Lv.toNat + 8 := by omega
    have hF : MptH.BlkF P (8 * ((Lv.toNat + 8) / 8)) Γ2 p' := by
      intro x hx
      obtain ⟨hx8, hx1, hx2⟩ := hx
      refine ⟨Rec.outside_gam hordq hLay hnf (by omega) (by omega), ?_⟩
      unfold Ptrs.Allocated
      left
      omega
    have hnA : ∀ x : BitVec 64, Overlap P.toNat (8 * ((Lv.toNat + 8) / 8)) x →
        ¬ a.p0.Allocated x.toNat := by
      intro x hx
      obtain ⟨hx8, hx1, hx2⟩ := hx
      unfold Ptrs.Allocated
      unfold Ptrs.Mono at hm0
      unfold Ptrs.Ordered at ho0
      unfold heapBase heapEnd scratchEnd at *
      omega
    obtain ⟨hf1, hf2, hf3, hf4⟩ := Rec.val_facts
    obtain ⟨hExt3, hhs⟩ := Rec.heap_adoptS ha Hooks.guestHooksR_mono (ext_trans he he2) hhs0
      (Ar := P) (n := 8 * ((Lv.toNat + 8) / 8)) (ty := Types.tVAL) hf1 hf2 hf3 (by omega) (by omega)
      (le_trans hf4 (by omega)) ⟨hP, by omega⟩ hP8 hF hnA hgr (fun _ => Rec.wf_valObj rfl)
    have hobj : Hooks.SlObj (Γ2 ++ [(⟨P, Types.tVAL, 8 * ((Lv.toNat + 8) / 8)⟩ : Obj)]) P Lv :=
      ⟨_, List.mem_append_right _ (List.mem_singleton_self _), rfl,
        show P.toNat ≤ P.toNat from le_rfl,
        show P.toNat + Lv.toNat ≤ P.toNat + 8 * ((Lv.toNat + 8) / 8) by omega⟩
    refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "inp")
        (.rStruct [.val (.word P), .val (.word Lv)]) { st with locals := s.locals })
      (Q := QF a) ?_ (fun t _ ht => ?_) (fun r t _ _ hq => qf_locals ha.hH _ hq)
    swap
    · exact ht
    have hinp : ∀ t : State σ, t = setVarHOLFinite (nm "inp")
        (.rStruct [.val (.word P), .val (.word Lv)]) { st with locals := s.locals } →
        ev t (lv (nm "inp")) = some (.rStruct [.val (.word P), .val (.word Lv)]) := by
      intro t ht; subst ht; rw [ev_lv]; exact lk_set_self _ _ _
    refine hoareG_tailCall hds ?_ ?_
    · intro s' _ hs' vs' hvs' callee' v' st' hR' _
      have h0 := ev_rfield (hinp s' hs') 0
      have h1 := ev_rfield (hinp s' hs') 1
      have hvs'' : evs s' [.rfield 0 (lv (nm "inp")), .rfield 1 (lv (nm "inp"))] =
          some [.val (.word P), .val (.word Lv)] :=
        evs_cons (by rw [h0]; rfl) (evs_cons (by rw [h1]; rfl) evs_nil)
      rw [hvs''] at hvs'
      cases hvs'
      subst hs'
      obtain ⟨Γ', q', hext, hh', hmo, -, -, -, hret⟩ := heap_callMP ha hhs hR' (by simp [Good])
        (by simp [Abortive]) (argsOK_any (by simp [dsSig]) rfl) (by simp [dsSig]) ⟨P, Lv, rfl, hP, by omega, hobj⟩
        (by simp [dsSig]) (fun _ => hgr)
      intro r' hr' hna
      cases hr'
      refine ⟨Γ', q', ext_trans hExt3 hext,
        heap_congr (s := st') ha.hH rfl rfl rfl rfl hh', fun w hw => ?_⟩
      cases hw
      exact retOK_fits (hret v' rfl)
    · intro s' _ hs' vs' hvs' callee' r st' hR' _ habn
      have h0 := ev_rfield (hinp s' hs') 0
      have h1 := ev_rfield (hinp s' hs') 1
      have hvs'' : evs s' [.rfield 0 (lv (nm "inp")), .rfield 1 (lv (nm "inp"))] =
          some [.val (.word P), .val (.word Lv)] :=
        evs_cons (by rw [h0]; rfl) (evs_cons (by rw [h1]; rfl) evs_nil)
      rw [hvs''] at hvs'
      cases hvs'
      subst hs'
      intro r' hr' hna
      cases hr'
      obtain ⟨Γ', q', hext, hh', -⟩ := heap_callMP ha hhs hR' (abn_good' habn) hna
        (argsOK_any (by simp [dsSig]) rfl) (by simp [dsSig]) ⟨P, Lv, rfl, hP, by omega, hobj⟩
        (by simp [dsSig]) (fun _ => hgr)
      exact ⟨Γ', q', ext_trans hExt3 hext,
        heap_congr (s := st') ha.hH rfl rfl rfl rfl hh',
        fun w hw => absurd hw (Node.abn_ne_ret habn w)⟩
  · intro s _ ⟨_, Γ, q, he, hh1⟩ vs hvs callee r st ⟨hR, hLc⟩ _ habn r' hr' hna
    cases hr'
    rw [evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna
      (argsOK_any (by simp [sigIB]) rfl)
      (fun x hx => absurd hx (argCells_any (by simp [sigIB]))) (by simp [sigIB]) (fun _ => hgr)
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2,
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

/-- **`decode_host_input` at the challenge context and the record family `guestHooksR`.** -/
theorem sumSpecA_decode_host_input_guestR {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_host_input") dhSig
      (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpecA_decode_host_input Rec.foldOK_guestR Rec.tab26_guestR
    Rec.sumSpecA_decode_stateless_input_guestR

/-- The capability-summary form (`Pre = True`, no capabilities). -/
theorem csumm_decode_host_input_guestR {σ : Type} :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_host_input") dhSig [] :=
  csumm_of_summA sumSpecA_decode_host_input_guestR

end InitECandidate.Solver.MemSafe.Dhi

#print axioms InitECandidate.Solver.MemSafe.Dhi.sumSpecA_decode_host_input
#print axioms InitECandidate.Solver.MemSafe.Dhi.sumSpecA_decode_host_input_guestR
#print axioms InitECandidate.Solver.MemSafe.Dhi.csumm_decode_host_input_guestR
