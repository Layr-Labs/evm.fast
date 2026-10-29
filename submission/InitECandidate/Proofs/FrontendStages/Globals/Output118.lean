import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data118
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate101
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody118_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 21#64]

def globalBody118_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody118_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p"))
        (Flapjack.Exp.const 0#64))]) globalBody118_0 globalBody118_1

def globalBody118_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 22#64]

def globalBody118_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "maxbytes")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "maxbytes")
        (Flapjack.Exp.var Flapjack.VarKind.local "n"))]) globalBody118_3 globalBody118_1

def globalBody118_5 : Prog (BitVec 64) :=
.seq globalBody118_2 globalBody118_4

def globalBody118_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody118_7 : Prog (BitVec 64) :=
.seq globalBody118_5 globalBody118_6

def globalData118 : Decl (BitVec 64) :=
.function { name := "rlp_check_uint_bytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("maxbytes", Flapjack.Shape.one)], body := globalBody118_7, returnShape := (Flapjack.Shape.one) }
def globalOutput118 := Pancake.PanLang.declToHOL globalData118
end InitECandidate.Proofs.FrontendStages.Declarations
