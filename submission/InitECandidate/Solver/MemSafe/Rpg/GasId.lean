import InitECandidate.Solver.MemSafe.Rpg.Gas4

/-!
# Eon: `GasFSI` for `pre_identity`

`sk` cannot accept `pre_identity` (its `st ev + EV_OUTPUT_N, n` needs `n < 2^32`, known only from the
message fact `IdPre`). Hand proof: run the two loads, then `sk_sound` on the tail with `n : bnd`.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

def idA : AEnv := ⟨[(nm "n", .fk .bnd), (nm "msg", .top)], []⟩

theorem sk_idTail : sk gE idA Pre.idTail = true := by
  unfold Pre.idTail idA
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem gas_identity (En : RpEnv σ X H) : GasFSI σ X H (nm "pre_identity") := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hreq hid e hge
  rw [En.hX] at hl
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen Pre.code_pre_identity hl
  obtain ⟨p, hp, -⟩ := id hG
  have hreqE : ReqOK capE s Γ := req_sub capSub_capE hreq
  obtain ⟨-, hh0⟩ := entry_act En hG hp hreqE
  obtain ⟨E, M, hE, hM, hb⟩ := Pre.idpre_facts (a := aAt H s Γ p) (fun _ => rfl) hG hid
  have Hb : HoareG σ X (fun t => t = s) Pre.idBody (Qg e (gasV s e)) := by
    unfold Pre.idBody
    refine hoareG_dec fun s1 hs1 hP v hv _ => ?_
    have hs0 : s1 = s := hP
    subst hs0
    have hv1 : v = Mod.V M := by rw [Pre.ev_pm_load hE hv, hM]
    subst hv1
    refine hoareG_dec fun s2 hs2 hP2 v2 hv2 _ => ?_
    have hs1 : s2 = setVarHOLFinite (nm "msg") (Mod.V M) s1 := hP2
    subst hs1
    obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv2
    have hlm : ev (setVarHOLFinite (nm "msg") (Mod.V M) s1) (lv (nm "msg")) = some (Mod.V M) :=
      Pre.ev_lv_eq_l (lk_set_self _ _ _)
    rw [ev_add2 hlm (ev_cw _ 96)] at hw
    simp only [Mod.V, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    subst hw
    have hmem : (setVarHOLFinite (nm "msg") (Mod.V M) s1).memory (M + BitVec.ofNat 64 96) =
        .word (rd s1.memory (M + BitVec.ofNat 64 96)) := Pre.mem_rd_l _ _
    rw [hmem]
    refine hoareG_conseq (sk_sound En Pre.idTail idA sk_idTail s1 Γ p hG hp hreqE e (gasV s1 e) hge
      le_rfl Γ []) (fun t _ ht => ?_) (fun r t _ _ hq => hq)
    subst ht
    refine ⟨p, heap_congr (s := s1) En.hH rfl rfl rfl rfl hh0, ⟨rfl, fun k td hk => by simp [idA] at hk⟩, ?_⟩
    intro x av hx
    simp only [idA, List.lookup] at hx
    split at hx
    · rename_i hxn
      have hxn' : x = nm "n" := by simpa using hxn
      subst hxn'
      cases hx
      exact ⟨_, lk_set_self _ _ _, _, rfl, hb⟩
    · split at hx
      · rename_i hxm
        have hxm' : x = nm "msg" := by simpa using hxm
        subst hxm'
        cases hx
        refine ⟨Mod.V M, ?_, M, rfl, trivial⟩
        rw [lk_set_ne _ _ (by decide)]
        exact lk_set_self _ _ _
      · simp at hx
  exact Hb s hs rfl (by rw [hr]; exact hgood) r hr hna

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_identity
