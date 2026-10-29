import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify102
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body118_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 21#64]

def body118_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body118_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "n")),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p"))
        (Flapjack.Exp.const 0#64))]) body118_0 body118_1

def body118_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_fail" [Flapjack.Exp.const 22#64]

def body118_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "maxbytes")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "maxbytes")
        (Flapjack.Exp.var Flapjack.VarKind.local "n"))]) body118_3 body118_1

def body118_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body118_6 : Prog (BitVec 64) :=
.seq body118_4 body118_5

def body118_7 : Prog (BitVec 64) :=
.seq body118_2 body118_6

def body118_8 : Prog (BitVec 64) :=
.seq body118_2 body118_4

def body118_9 : Prog (BitVec 64) :=
.seq body118_8 body118_5

def originalData118 : Decl (BitVec 64) :=
.function { name := "rlp_check_uint_bytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("maxbytes", Flapjack.Shape.one)], body := body118_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData118 : Decl (BitVec 64) :=
.function { name := "rlp_check_uint_bytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one), ("maxbytes", Flapjack.Shape.one)], body := body118_9, returnShape := (Flapjack.Shape.one) }
def original118 := Pancake.PanLang.declToHOL originalData118
def simplified118 := Pancake.PanLang.declToHOL simplifiedData118
end InitECandidate.Proofs.FrontendStages.Declarations
