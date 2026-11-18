import InitECandidate.Solver.MemSafe.ConstCost.Miller.Main
import InitECandidate.Solver.MemSafe.ConstCost.Ecp.Main
import InitECandidate.Solver.MemSafe.SeqCost.Callers.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def prim0 := SeqCost.Callers.table10
theorem prim0_sound : TblSound σ guestCtx prim0 := SeqCost.Callers.table10_sound
def prim1 := ConstCost.Core.extend prim0 (nm "is_zero_bytes") ConstCost.Prim.b_is_zero_bytes
theorem prim1_sound : TblSound σ guestCtx prim1 := ConstCost.Core.extend_sound prim0_sound ConstCost.Prim.cc_is_zero_bytes
def prim2 := ConstCost.Core.extend prim1 (nm "fe_set_one") ConstCost.Prim.b_fe_set_one
theorem prim2_sound : TblSound σ guestCtx prim2 := ConstCost.Core.extend_sound prim1_sound ConstCost.Prim.cc_fe_set_one
def prim3 := ConstCost.Core.extend prim2 (nm "fe_set_zero") ConstCost.Prim.b_fe_set_zero
theorem prim3_sound : TblSound σ guestCtx prim3 := ConstCost.Core.extend_sound prim2_sound ConstCost.Prim.cc_fe_set_zero
def prim4 := ConstCost.Core.extend prim3 (nm "ecp_set_inf") ConstCost.Prim.b_ecp_set_inf
theorem prim4_sound : TblSound σ guestCtx prim4 := ConstCost.Core.extend_sound prim3_sound ConstCost.Prim.cc_ecp_set_inf
def prim5 := ConstCost.Core.extend prim4 (nm "fq12_mul") ConstCost.Prim.b_fq12_mul
theorem prim5_sound : TblSound σ guestCtx prim5 := ConstCost.Core.extend_sound prim4_sound ConstCost.Prim.cc_fq12_mul
def prim6 := ConstCost.Core.extend prim5 (nm "fe_mul") ConstCost.Prim.b_fe_mul
theorem prim6_sound : TblSound σ guestCtx prim6 := ConstCost.Core.extend_sound prim5_sound ConstCost.Prim.cc_fe_mul
def prim7 := ConstCost.Core.extend prim6 (nm "fq12_sqr") ConstCost.Prim.b_fq12_sqr
theorem prim7_sound : TblSound σ guestCtx prim7 := ConstCost.Core.extend_sound prim6_sound ConstCost.Prim.cc_fq12_sqr
def prim8 := ConstCost.Core.extend prim7 (nm "fe_sqr") ConstCost.Prim.b_fe_sqr
theorem prim8_sound : TblSound σ guestCtx prim8 := ConstCost.Core.extend_sound prim7_sound ConstCost.Prim.cc_fe_sqr
def prim9 := ConstCost.Core.extend prim8 (nm "ecp_double") ConstCost.Prim.b_ecp_double
theorem prim9_sound : TblSound σ guestCtx prim9 := ConstCost.Core.extend_sound prim8_sound ConstCost.Prim.cc_ecp_double
def prim10 := ConstCost.Core.extend prim9 (nm "fe_eq") ConstCost.Prim.b_fe_eq
theorem prim10_sound : TblSound σ guestCtx prim10 := ConstCost.Core.extend_sound prim9_sound ConstCost.Prim.cc_fe_eq
def prim11 := ConstCost.Core.extend prim10 (nm "fe_is_zero") ConstCost.Prim.b_fe_is_zero
theorem prim11_sound : TblSound σ guestCtx prim11 := ConstCost.Core.extend_sound prim10_sound ConstCost.Prim.cc_fe_is_zero
def prim12 := ConstCost.Core.extend prim11 (nm "ecp_add") ConstCost.Prim.b_ecp_add
theorem prim12_sound : TblSound σ guestCtx prim12 := ConstCost.Core.extend_sound prim11_sound ConstCost.Prim.cc_ecp_add
def prim13 := ConstCost.Core.extend prim12 (nm "ecp_linefunc") ConstCost.Prim.b_ecp_linefunc
theorem prim13_sound : TblSound σ guestCtx prim13 := ConstCost.Core.extend_sound prim12_sound ConstCost.Prim.cc_ecp_linefunc
def prim14 := ConstCost.Core.extend prim13 (nm "fq12_frob") ConstCost.Prim.b_fq12_frob
theorem prim14_sound : TblSound σ guestCtx prim14 := ConstCost.Core.extend_sound prim13_sound ConstCost.Prim.cc_fq12_frob
def table0 := ConstCost.Core.extend (ConstCost.Core.extend prim14
    (nm "bn254_miller_raw") ConstCost.Miller.fullB) (nm "ecp_mul") ConstCost.Ecp.fullB
theorem table0_sound : TblSound σ guestCtx table0 :=
  ConstCost.Core.extend_sound (ConstCost.Core.extend_sound prim14_sound ConstCost.Miller.callee_cost) ConstCost.Ecp.callee_cost
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.ConstCost.Callers
