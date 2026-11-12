import InitECandidate.Solver.MemSafe.Sc.Main
import InitECandidate.Solver.MemSafe.Stor4.Final

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# `set_code`'s summary (hand: fold checker + the `tCSL` adoption)

**`sumSpecA_set_code_G`**: `set_code` under `ReqOK scCaps` and `LenOK` (the code length,
argument 2, is at most `2^32`), writing only what `scCaps` allows. The fold checker proves
everything but the `then` branch (`Then.lean`), where `sl = alloc(16)` is adopted as a `tCSL`
object (`CslW`: its length slot is at most `2^32`) before `jset`.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

def LenOK (vs : List (ValueHOL 64)) : Prop :=
  ∃ n : BitVec 64, vs[2]? = some (.val (.word n)) ∧ n.toNat ≤ 2 ^ 32

theorem sumSpecA_set_code_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "set_code")
      ⟨[.buf 20, .any, .any], [], [Hooks.gJn], true⟩
      (fun vs s Γ => ReqOK scCaps s Γ ∧ LenOK vs) (fun _ s Γ a => CapPW scCaps s Γ a)
      (fun _ _ _ _ _ _ => True) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hT : CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
    Frames.tab26_guestR
  have hcode : guestCtx.code.lookup (nm "set_code") = some (scParams, scBody, .one) := by
    rw [hX]; exact code_sc
  have hcs : capsOK Types.guestC scSig scCaps = true := by decide
  obtain ⟨okT, hokT⟩ := chk_tail_ex
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs ⟨hreq, hlenOK⟩
  obtain ⟨rfl, -, hvl, hbind⟩ := lookupCode_gen hcode hl
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hF.hH hF.hC hF.hal hF.hAC hF.hNS hcs hG hps hargs hreq
  obtain ⟨Θ, hig⟩ := init_ig (a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) scSig scCaps
    vs s Γ p1) hF.hH hh scParams (by show scSig.params.length = scParams.length; decide) hvl hargs
    (fun i hi hv => by rw [hloc]; exact hbind i hi hv) 0 ⟨[], []⟩ []
    (Nat.zero_le _) ⟨rfl, fun k td hk => by simp at hk⟩ (fun x av hx => by simp at hx)
  simp only [List.drop_zero] at hig
  have hLen : LenL s.locals := by
    obtain ⟨n, hn, hb⟩ := hlenOK
    have h2 : 2 < vs.length := (List.getElem?_eq_some_iff.mp hn).1
    have hv2 : vs[2] = .val (.word n) := (List.getElem?_eq_some_iff.mp hn).2
    have := (hbind 2 (by simp [scParams]) h2).1
    rw [hv2] at this
    exact ⟨n, by rw [hloc]; exact this, hb⟩
  have Hs := top_sound (a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) scSig scCaps
    vs s Γ p1) ha rfl hT rfl rfl (winSpecs_guest (σ := σ) hX) rfl hX hokT Γ Θ s
    hs ⟨hig, hLen⟩ (by rw [hr]; exact hgood)
  rw [hr] at Hs
  have core : ∃ Γ' p', Ext Γ Γ' ∧ Heap (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) scSig scCaps
      vs s Γ p1) Γ' p' (evaluateHOLFiniteState s scBody).2 ∧
      (∀ v, r = .returned v → RetOK Γ' p1 p' vs scSig.ret v) := by
    rcases r with _ | _ | _ | _ | _ | v | ⟨e, v⟩ | e
    all_goals first
      | (obtain ⟨B, Γ', Θ', -, hlat, p', hh', -, -⟩ := Hs
         exact ⟨Γ', p', hlat.1, hh', fun v h => by cases h⟩)
      | (obtain ⟨Γ', p', he, hh', hret⟩ := Hs
         exact ⟨Γ', p', he, hh', fun v' h => by cases h; exact hret⟩)
      | (rcases Hs with hab | ⟨Γ', p', he, hh'⟩
         · exact absurd hab hna
         · exact ⟨Γ', p', he, hh', fun v h => by cases h⟩)
  obtain ⟨Γ', p', hext, hh', hret⟩ := core
  exact ⟨Γ', p1, p', act_exit hcs hps hext hh' hret, trivial⟩

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.sumSpecA_set_code_G
