import InitECandidate.Solver.MemSafe.IvvhCost.Body
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Exb
open InitECandidate.Solver.MemSafe.Rec
namespace InitECandidate.Solver.MemSafe.IvvhCost
variable {σ : Type}

theorem callee_cost : Inv.CalleeCostP σ guestCtx (nm "is_valid_versioned_hashes") Pre loopBound := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs ⟨hloc, hpre⟩ hgood
  obtain ⟨SI, rfl, hNb⟩ := hpre
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := InitECandidate.Solver.MemSafe.lookupCode_gen code_ivvh hl
  have hL : Trie.LV [(nm "si", .val (.word SI))] s.locals := by
    intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    subst q
    rw [hloc]
    exact (hbind 0 (by decide) (by simp)).1
  exact body_cost (SI := SI) (M0 := s.memory) rfl rfl hNb s hs ⟨hL, rfl⟩ hgood

#print axioms callee_cost
end InitECandidate.Solver.MemSafe.IvvhCost
