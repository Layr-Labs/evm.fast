import InitECandidate.Solver.MemSafe.Wg.Wd3
import InitECandidate.Solver.MemSafe.Wg.Jn

/-!
# Wg: the body of the `process_withdrawals` loop (`wdS6`)

`i < nwd`: `w = wd + 44 i` lies in the `tVAL` object holding the withdrawal array (`inval wd (44 nwd)`), so `w + 16` (20 bytes) is a
`BufOK` argument of `create_ether`; `u256_mul` is plain; `journal_n = 0` keeps `G` (`Wg.G_jn_zero`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

def EnI (En : Env) (iv : BitVec 64) : Env := En.set (nm "i") (.val (.word iv))

theorem env_set_set (E : Env) (x : MlS) (v w : ValueHOL 64) : (E.set x v).set x w = E.set x w := by
  funext y
  simp only [Env.set]
  split_ifs <;> rfl

theorem tval_hi {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {x : Obj} (hx : x ∈ Γ)
    (ht : x.ty = tVAL) : x.hi ≤ 2 ^ 64 := by
  have h := (hL.1 x hx).2.2.2.2
  have hr : (guestC.ty x.ty).region = .heap := by rw [ht]; decide
  rw [hr] at h
  obtain ⟨-, h2⟩ := h
  have := hord.2.1
  have h3 : heapEnd < 2 ^ 64 := by unfold heapEnd; decide
  unfold Obj.hi Obj.lo at *
  omega

theorem wv16_toNat {wd iv : BitVec 64} {nwd : Nat} (h : wd.toNat + 44 * nwd ≤ 2 ^ 64) (hi : iv.toNat < nwd) :
    (wd + iv * BitVec.ofNat 64 44 + BitVec.ofNat 64 16).toNat = wd.toNat + 44 * iv.toNat + 16 := by
  have e44 : (BitVec.ofNat 64 44).toNat = 44 := rfl
  have e16 : (BitVec.ofNat 64 16).toNat = 16 := rfl
  have hiv : iv.toNat * 44 < 2 ^ 64 := by omega
  have hw : wd.toNat + iv.toNat * 44 < 2 ^ 64 := by omega
  have hw16 : wd.toNat + iv.toNat * 44 + 16 < 2 ^ 64 := by omega
  rw [BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_mul, e44, e16, Nat.mod_eq_of_lt hiv,
    Nat.mod_eq_of_lt hw, Nat.mod_eq_of_lt hw16]
  omega

theorem argsOK_buf20_any {Γ : Gam} {p : Ptrs} {w : BitVec 64} {v2 : ValueHOL 64} (h : BufOK guestC Γ p w.toNat 20) :
    ArgsOK guestC Γ p [(.buf 20), .any] [.val (.word w), v2] := by
  refine ⟨rfl, ?_⟩
  intro i pt v hpt hv
  match i, pt, v with
  | 0, pt, v =>
    simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨w, rfl, h⟩
  | 1, pt, v =>
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt; trivial
  | i + 2, pt, v => simp at hpt

section wd4
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

/-- The tail of the body, `create_ether(w + 16, wei); journal_n = 0; i = i + 1;`, with `w` tracked. -/
theorem wd_tail {nwd wd iv : BitVec 64} (hlt : iv.toNat < nwd.toNat)
    (hin : S (Fct.inval wd (44 * nwd.toNat))) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzj : nm "journal_n" ∉ Z)
    (hEnw : En (nm "wd") = some (.val (.word wd)))
    (hn1 : En (nm "w") = none) :
    HN (PA E ((EnI En iv).set (nm "w") (.val (.word (wd + iv * BitVec.ofNat 64 44)))) S) wdS9
      (PA E (EnI En (iv + BitVec.ofNat 64 1)) S) := by
  have hnw : ∀ jv, (EnI En jv) (nm "w") = none := fun jv => by
    simp (config := { decide := true }) [EnI, Env.set, hn1]
  have hwe : ((EnI En iv).set (nm "w") (.val (.word (wd + iv * BitVec.ofNat 64 44)))) (nm "w") =
      some (.val (.word (wd + iv * BitVec.ofNat 64 44))) := env_set_self _ _ _
  unfold wdS9
  refine hseqN (P1 := PA E ((EnI En iv).set (nm "w") (.val (.word (wd + iv * BitVec.ofNat 64 44)))) S)
    (hn_post (hn_callR (E := E) (En := (EnI En iv).set (nm "w") (.val (.word (wd + iv * BitVec.ofNat 64 44)))) (S := S)
      (f := nm "create_ether") (args := [(.op .add [lv (nm "w"), cw 16]), lv (nm "wei")])
      (W := fun g' => tabW.contains g' = true) cr_create_ether (gwk_tab (by decide)) (fun _ => False)
      (callObl_plain ?_ hT hzt) ?_)
    (fun t _ hh => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))) ?_
  · intro s hs vs hvs Γ p hr hL
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    have e1 := evI_add (evI_lv_pa hs hwe) (evI_cw s 16) v1 h1
    subst e1
    obtain ⟨x, hx, htx, hx1, hx2⟩ := hL _ hin
    obtain ⟨q, hq, hord, hLay, -⟩ := ebRun_G hr
    obtain rfl : q = p := Option.some.inj (hq.symm.trans (ebRun_ptrs hr))
    have hhi := tval_hi hord hLay hx htx
    have hn : (wd + iv * BitVec.ofNat 64 44 + BitVec.ofNat 64 16).toNat = wd.toNat + 44 * iv.toNat + 16 :=
      wv16_toNat (by omega) hlt
    refine argsOK_buf20_any ?_
    rw [hn]
    exact Rec.bufOK_of_tval hord hLay hx htx (b := wd.toNat + 44 * iv.toNat + 16) (by omega) (by omega)
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq f hf
    exact hf.elim
  refine hseqN (P1 := PA E ((EnI En iv).set (nm "w") (.val (.word (wd + iv * BitVec.ofNat 64 44)))) S) ?_ ?_
  · exact hn_assignJn0 (tidy_ne hT hzj).1 (tidy_ne hT hzj).2
  · have hiW : ((EnI En iv).set (nm "w") (.val (.word (wd + iv * BitVec.ofNat 64 44)))) (nm "i") =
        some (.val (.word iv)) := by
      rw [env_set_ne _ _ (by decide)]
      simp (config := { decide := true }) [EnI, Env.set]
    refine hn_post (hassignT (n := nm "i") (w' := iv + BitVec.ofNat 64 1) ⟨_, hiW⟩
      (fun s hs v hv => evI_add (evI_lv_pa hs hiW) (evI_cw s 1) v hv)) ?_
    intro t _ hh
    refine pa_mono hh ?_ (fun f hf => hf)
    intro x v hx
    by_cases hxi : x = nm "i"
    · subst hxi
      simp (config := { decide := true }) [EnI, Env.set] at hx ⊢
      exact hx
    · by_cases hxw : x = nm "w"
      · subst hxw
        simp (config := { decide := true }) [EnI, Env.set, hn1] at hx
      · simp [EnI, Env.set, hxi, hxw] at hx ⊢
        exact hx

/-- The body of the loop. -/
theorem wd_body {nwd wd iv : BitVec 64} (hlt : iv.toNat < nwd.toNat)
    (hin : S (Fct.inval wd (44 * nwd.toNat))) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzj : nm "journal_n" ∉ Z)
    (hEnw : En (nm "wd") = some (.val (.word wd)))
    (hn1 : En (nm "w") = none) (hn2 : En (nm "amt") = none) (hn3 : En (nm "wei") = none) :
    HN (PA E (EnI En iv) S) wdS6 (PA E (EnI En (iv + BitVec.ofNat 64 1)) S) := by
  have hEnw' : ∀ jv, (EnI En jv) (nm "wd") = some (.val (.word wd)) := fun jv => by
    simp (config := { decide := true }) [EnI, Env.set, hEnw]
  have hi : ∀ jv, (EnI En jv) (nm "i") = some (.val (.word jv)) := fun jv => by
    simp (config := { decide := true }) [EnI, Env.set]
  have hQ : ∀ n : MlS, (EnI En (iv + BitVec.ofNat 64 1)) n = none → ResIns n (fun r t => r = none ∧ PA E (EnI En (iv + BitVec.ofNat 64 1)) S t) :=
    fun n hn => resIns_pa hn
  have hnE : ∀ n : MlS, En n = none → n ≠ nm "i" → (EnI En (iv + BitVec.ofNat 64 1)) n = none := fun n hn hne => by
    simp [EnI, Env.set, hne, hn]
  unfold wdS6
  unfold HN
  refine hdecT (w := wd + iv * BitVec.ofNat 64 44)
    (hQ _ (hnE _ hn1 (by decide))) (fun s hs v hv => ?_) ?_
  · exact evI_add (evI_lv_pa hs (hEnw' iv)) (evI_mul (evI_lv_pa hs (hi iv)) (evI_cw s 44)) v hv
  unfold wdS7
  refine hdecF (hQ _ (hnE _ hn2 (by decide))) (by simp (config := { decide := true }) [EnI, Env.set, hn2]) ?_
  unfold wdS8
  refine hdecCallR (hQ _ (hnE _ hn3 (by decide))) cr_u256_mul gwk_mul (fun _ _ => False)
    (callObl_plain (ps := [PT.any, PT.any]) ?_ hT (fun g _ h => h)) ?_ ?_
  · intro s hs vs hvs Γ p hr hL
    exact argsOK_any_eval (by simp) (by simp) hvs
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh f hf
    exact hf.elim
  · intro v hsh
    refine hoare_pre (wd_tail hlt hin hT hzt hzj hEnw hn1) ?_
    intro t _ ht
    refine pa_mono ht ?_ (fun f hf => Or.inl hf)
    intro x v' hx
    by_cases hxw : x = nm "wei"
    · subst hxw
      simp (config := { decide := true }) [EnI, Env.set, hn3] at hx
    · simp [Env.set, hxw] at hx ⊢
      exact hx

end wd4

end InitECandidate.Solver.MemSafe.Wg
