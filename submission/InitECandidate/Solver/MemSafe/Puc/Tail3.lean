import InitECandidate.Solver.MemSafe.Puc.Tail2

/-!
# Puc U6c: the return-data copy and the whole tail

`pu_copy`: `system_ret = alloc(n + 8); memcpy(system_ret, out[40], n); st out + 40, system_ret` on `TlS`.
`pu_tail`: pucS27 to the `return`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- The tail state with a writable buffer `w` of `n` bytes. -/
def TLb (A : TlA σ) (out w : BitVec 64) (n : Nat) (t : State σ) : Prop :=
  ∃ Γ p, TlS A (refA A) (Zt A out) ([] : List Obj) t Γ p ∧ BufOK guestC Γ p w.toNat n

/-- `memcpy(w, _, n)` into a writable buffer. -/
theorem hn_memcpy {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out) {w n0 : BitVec 64} {e : ExpHOL 64}
    (hEw : En (nm "system_ret") = some (.val (.word w))) (hEn : En (nm "system_ret_n") = some (.val (.word n0))) :
    HN (PAg (TLb A out w n0.toNat) En) (callD (nm "memcpy") [lv (nm "system_ret"), e, lv (nm "system_ret_n")])
      (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) := by
  refine hoare_callD ((sumSpecA_relX tab_memcpy).and (funSpec_pt_gw_all guestCtx_code memcpy_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst
  obtain ⟨⟨Γ, p, hr, hbuf⟩, hlk⟩ := hpa
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := Spec.evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := Spec.evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, h3, hr3⟩ := Spec.evs_cons_inv hr2
  rw [Spec.evs_nil] at hr3
  cases hr3
  have e1 : v1 = .val (.word w) := evI_lv (hlk _ _ hEw) v1 h1
  have e3 : v3 = .val (.word n0) := evI_lv (hlk _ _ hEn) v3 h3
  subst e1 e3
  have hargs : ArgsOK guestC Γ p (Sig.mk [.bufArg 2 1 0, .any, .any] [] [] false).params
      [.val (.word w), v2, .val (.word n0)] := by
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i
    · simp at hpt hv; subst hpt hv
      exact ⟨w, n0, rfl, rfl, by simpa using hbuf⟩
    · simp at hpt; subst hpt; trivial
    · simp at hpt; subst hpt; trivial
    · simp at hpt
  have hre : TlS A (refA A) (Zt A out) ([] : List Obj) s Γ p := hr
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core hR hgl (by simp) (by intro g _ h; simp at h)
    (fun _ _ Γ a hw => capPW_st csOK_nil.st hw) hre hargs (fun a _ => P.noY a) (preT csOK_nil hre callee)
  exact ⟨rfl, ⟨Γ', p', hrun⟩, hlk⟩

/-- The store of the copy's address into `out[40]`. -/
theorem hn_stOut {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out) {w : BitVec 64}
    (hEo : En (nm "out") = some (.val (.word out))) (hEw : En (nm "system_ret") = some (.val (.word w))) :
    HN (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En)
      (.store (.op .add [lv (nm "out"), cw 40]) (lv (nm "system_ret")))
      (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) := by
  refine hoare_store fun s hs hpa w' v mem hw hv hmem => ?_
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hw' : w' = out + BitVec.ofNat 64 40 := by
    have h := evI_add (evI_lv (hlk _ _ hEo)) (evI_cw s 40) _ hw
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h
    exact h
  have hv' : v = .val (.word w) := evI_lv (hlk _ _ hEw) v hv
  subst hw' hv'
  obtain ⟨o, ho, hb, ht, hs'⟩ := P.outO
  obtain ⟨M, hM, hbM, htM, hsM⟩ := hr.ext o ho
  have hMt : M.ty ∈ blockTys := by rw [htM, ht]; simp [blockTys]
  have hk : M.HasSlot 5 := by unfold Obj.HasSlot; omega
  have hcell : out + BitVec.ofNat 64 40 = M.cell 5 := by
    unfold Obj.cell; rw [hbM, hb]
  have hp5 : (guestC.ty M.ty).slot 5 = .prot := slot_block hMt 5
  have hnz : ¬ Zt A out (M.cell 5) := fun h => h.2 hcell.symm
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  rw [hcell]
  exact ⟨rfl, ⟨Γ, p, tl_store_blk hr hM hMt hk hp5 hnz w⟩, hlk⟩

/-- **The copy of the return data** (pucD). -/
theorem pu_copy {A : TlA σ} {out : BitVec 64} {En : Env} (P : TPre A out)
    (hEo : En (nm "out") = some (.val (.word out))) {n0 : BitVec 64}
    (hEn : En (nm "system_ret_n") = some (.val (.word n0))) (hn32 : n0.toNat < 2 ^ 32)
    (hret : En (nm "system_ret") = none) :
    HN (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) pucD
      (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) En) := by
  unfold pucD
  have hB := bloc_tl A (refA A) (Zt A out) (O := ([] : List Obj))
  refine hdecCallK (resIns_PAg hB hret) ((sumSpecA_relX tab_alloc).and (funSpec_pt_gw_all guestCtx_code tab_alloc_ok)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  obtain ⟨v0, rfl, hv0⟩ := evs_single hvs
  have hv0' : v0 = .val (.word (n0 + BitVec.ofNat 64 8)) := evI_add (evI_lv (hlk _ _ hEn)) (evI_cw s 8) v0 hv0
  subst hv0'
  have hre : TlS A (refA A) (Zt A out) ([] : List Obj) s Γ p := hr
  obtain ⟨Γ', p', hc, hrun, -⟩ := tl_call_core hR hgl (by simp) (by intro g _ h; simp at h)
    (fun _ _ Γ a hw => capPW_st csOK_nil.st hw) hre (argsOK_anys (by simp) rfl) (fun a _ => P.noY a)
    (preT csOK_nil hre callee)
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  have hret' := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) w rfl (by simp [flattenHOL])
  obtain ⟨x, hx, hfb⟩ := hret'
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
  subst hx
  rw [Nat.one_mul, Nat.add_zero] at hfb
  have hn8 : (n0 + BitVec.ofNat 64 8).toNat = n0.toNat + 8 := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
  have hord' := tl_ord hrun
  have hbuf : BufOK guestC Γ' p' w.toNat n0.toNat := by
    intro a ha
    right
    have ha' : Overlap w.toNat (n0 + BitVec.ofNat 64 8).toNat a := by
      obtain ⟨h1, h2, h3⟩ := ha
      exact ⟨h1, h2, by rw [hn8]; omega⟩
    exact ⟨(hfb.2 a ha').2, alloc_of_fresh (tl_ord hre) hord' (hfb.2 a ha').1⟩
  have hEw : (En.set (nm "system_ret") (.val (.word w))) (nm "system_ret") = some (.val (.word w)) := env_set_self _ _ _
  have hEn' : (En.set (nm "system_ret") (.val (.word w))) (nm "system_ret_n") = some (.val (.word n0)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEn
  have hEo' : (En.set (nm "system_ret") (.val (.word w))) (nm "out") = some (.val (.word out)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEo
  refine hoare_post (hoare_pre (P := PAg (TLb A out w n0.toNat) (En.set (nm "system_ret") (.val (.word w))))
    (hseqN (hn_memcpy P (e := .load .one (.op .add [lv (nm "out"), cw 40])) hEw hEn')
      (hn_stOut P hEo' hEw)) ?_) ?_
  · intro t _ ht
    subst ht
    exact ⟨⟨Γ', p', tl_set hrun (nm "system_ret") _, hbuf⟩, lke_set (lke_restore hlk) _ _⟩
  · intro r t _ _ h
    refine ⟨h.1, pag_mono h.2 ?_ (fun s hs => hs)⟩
    intro x v hx
    have hne : x ≠ nm "system_ret" := fun e => by rw [e, hret] at hx; cases hx
    rw [env_set_ne _ _ hne]; exact hx

end InitECandidate.Solver.MemSafe.Puc
