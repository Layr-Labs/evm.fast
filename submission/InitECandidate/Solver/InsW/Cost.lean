import InitECandidate.Solver.InsW.Dec
import InitECandidate.Solver.Spec.Mpt.InsertFinal
import InitECandidate.Solver.MemSafe.Entry

/-!
# The conditional cost of `_mpt_insert_node`

From an entry whose remaining key length `klen - level` is at most `64` (every `mpt_set`
call with a key of at most `32` bytes: the nibble key has length `64` or `2 klen`, and the
descent starts at level `0`), the insertion loop runs at most `insMbW LwMax + 1` iterations,
`LwMax = 2 ^ 35 + 64` being the window size for the guest's bounded memory domain. The
accepted all-states bound used `2 ^ 131`; this one is about `2 ^ 100`.
-/

set_option autoImplicit false
set_option maxHeartbeats 8000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.InsW
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.Spec.Mpt

variable {σ : Type} {X : Ctx 64}

def InsPreW (vs : List (ValueHOL 64)) (_ : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ K Lv : BitVec 64, vs[2]? = some (.val (.word K)) ∧ vs[3]? = some (.val (.word Lv)) ∧
    (K - Lv).toNat ≤ 64

def LwMax : Nat := 2 ^ 35 + 64

theorem insMuW_le {lo : BitVec 64} {Lw : Nat} {s : PanSemStateFiniteExact 64 σ} (hI : InsIW s) :
    insMuW lo Lw s ≤ insMbW Lw := by
  classical
  unfold insMuW insMbW
  split
  · omega
  rename_i hgo
  split
  · have hA := hI.2 hgo
    have hphi := phiW_le lo Lw s.memory
    have hR : rho s.memory (wl s (nm "slot")) ≤ 2 ^ 64 + 1 := runLenG_le _ _ _ _
    have h01 : (if Chi0 s then 0 else 1) ≤ 1 := by split <;> omega
    have hchi := Nat.mul_le_mul_right (2 ^ 64 + 2) h01
    have hm := Nat.mul_le_mul_right Wt (show (wl s (nm "klen") - wl s (nm "level")).toNat +
      phiW lo Lw s.memory ≤ 64 + Lw by omega)
    omega
  · omega

theorem insMbW_mono {L L' : Nat} (h : L ≤ L') : insMbW L ≤ insMbW L' := by
  unfold insMbW
  have := Nat.mul_le_mul_right Wt (show 64 + L ≤ 64 + L' by omega)
  omega

theorem insert_costW (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    {Bb : Nat} (hb : Cost σ X insLoopBody Bb)
    (heInv : CalleeEscFree σ X (nm "node_invalidate"))
    (heCpl : CalleeEscFree σ X (nm "common_prefix_length")) :
    Inv.CalleeCostP σ X (nm "_mpt_insert_node") InsPreW
      ((insMbW LwMax + 1) * (Bb + 1)) := by
  obtain ⟨L, hL, ⟨lo, hdom⟩, -, hL35⟩ := hX
  have hL64 : L + 64 < 2 ^ 64 := by unfold addrStepMax alignSlack at hL; omega
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := MemSafe.lookupCode_gen code_mpt_insert_node hl
  have H := hdecI_of_hoare (σ := σ) (X := X) (c := goCond) (body := insLoopBody) InsIW
    (insMuW lo (L + 64)) (fun s => ¬ InsDoomed X s) (fun _ h => h) (fun _ => rfl) (fun _ h hd => h hd)
    (ins_decW hC hdom hL64)
  have hloop : CostP σ X InsIW (.while goCond insLoopBody)
      ((insMbW (L + 64) + 1) * (Bb + 1)) :=
    costP_while_doomed InsIW (insMuW lo (L + 64)) (insMbW (L + 64)) (InsDoomed X)
      hb (fun _ h => h)
      (fun s _ hI _ _ => insMuW_le hI) (fun s hs hI hc _ hnd hexit => H s hs hI hc hnd hexit)
      (ins_doom hC heInv heCpl)
  intro s hs ⟨hloc, K, Lv, hK, hLv, hA⟩ hg
  have h2 : 2 < vs.length := by
    rcases vs with _ | ⟨_, _ | ⟨_, _ | ⟨_, _⟩⟩⟩ <;> simp_all
  have h3 : 3 < vs.length := by
    rcases vs with _ | ⟨_, _ | ⟨_, _ | ⟨_, _ | ⟨_, _⟩⟩⟩⟩ <;> simp_all
  have hk : s.locals.lookup (nm "klen") = some (.val (.word K)) := by
    rw [hloc]
    have := (hbind 2 (by rw [hlen]; exact h2) h2).1
    rw [List.getElem?_eq_getElem h2] at hK
    simp only [Option.some.injEq] at hK
    rw [← hK]; exact this
  have hlv : s.locals.lookup (nm "level") = some (.val (.word Lv)) := by
    rw [hloc]
    have := (hbind 3 (by rw [hlen]; exact h3) h3).1
    rw [List.getElem?_eq_getElem h3] at hLv
    simp only [Option.some.injEq] at hLv
    rw [← hLv]; exact this
  have main : CostP σ X (fun t => t.locals.lookup (nm "klen") = some (.val (.word K)) ∧
      t.locals.lookup (nm "level") = some (.val (.word Lv))) insBody
      ((insMbW (L + 64) + 1) * (Bb + 1)) := by
    unfold insBody
    refine costP_dec (P' := fun t => t.locals.lookup (nm "klen") = some (.val (.word K)) ∧
      t.locals.lookup (nm "level") = some (.val (.word Lv))) ?_
      (fun s _ ⟨h1, h2⟩ _ _ _ => ⟨by rw [lk_set_ne _ _ (by decide)]; exact h1,
        by rw [lk_set_ne _ _ (by decide)]; exact h2⟩)
    refine costP_dec (P' := fun t => t.locals.lookup (nm "slot") = some (.val (.word 0)) ∧
      t.locals.lookup (nm "klen") = some (.val (.word K)) ∧
      t.locals.lookup (nm "level") = some (.val (.word Lv))) ?_
      (fun s _ ⟨h1, h2⟩ v hv _ => by
        rw [ev_cw] at hv; cases hv
        exact ⟨lk_set_self _ _ _, by rw [lk_set_ne _ _ (by decide)]; exact h1,
          by rw [lk_set_ne _ _ (by decide)]; exact h2⟩)
    refine costP_dec (P' := InsIW) ?_ (fun s _ ⟨hs0, h1, h2⟩ v _ _ => ⟨Or.inr fun S N e1 _ e3 _ => ?_,
      fun _ => ?_⟩)
    · have := costP_seq_cost hloop (cost_return (σ := σ) (X := X) (lv (nm "result")))
      simpa using this
    · rw [lk_set_ne _ _ (by decide), hs0] at e1
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at e1
      exact absurd e1.symm e3
    · rw [wl_of (show (setVarHOLFinite (nm "go") v s).locals.lookup (nm "klen") =
          some (.val (.word K)) by rw [lk_set_ne _ _ (by decide)]; exact h1),
        wl_of (show (setVarHOLFinite (nm "go") v s).locals.lookup (nm "level") =
          some (.val (.word Lv)) by rw [lk_set_ne _ _ (by decide)]; exact h2)]
      exact hA
  have := (main s hs ⟨hk, hlv⟩ hg).1
  have hmono : (insMbW (L + 64) + 1) * (Bb + 1) ≤
      (insMbW LwMax + 1) * (Bb + 1) :=
    Nat.mul_le_mul_right _ (by have := insMbW_mono (show L + 64 ≤ LwMax by unfold LwMax; omega); omega)
  omega

end InitECandidate.Solver.InsW
