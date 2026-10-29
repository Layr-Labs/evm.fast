import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data24
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate8
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody24_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.op Flapjack.BinOp.and
          [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 71777214294589695#64])
        (Flapjack.Exp.const 8#64),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 8#64),
          Flapjack.Exp.const 71777214294589695#64]])

def globalBody24_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "x"
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl
        (Flapjack.Exp.op Flapjack.BinOp.and
          [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.const 281470681808895#64])
        (Flapjack.Exp.const 16#64),
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 16#64),
          Flapjack.Exp.const 281470681808895#64]])

def globalBody24_2 : Prog (BitVec 64) :=
.seq globalBody24_0 globalBody24_1

def globalBody24_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x") (Flapjack.Exp.const 32#64)])

def globalBody24_4 : Prog (BitVec 64) :=
.seq globalBody24_2 globalBody24_3

def globalData24 : Decl (BitVec 64) :=
.function { name := "bswap64", inline := false, exported := false, params := [("x", Flapjack.Shape.one)], body := globalBody24_4, returnShape := (Flapjack.Shape.one) }
def globalOutput24 := Pancake.PanLang.declToHOL globalData24
end InitECandidate.Proofs.FrontendStages.Declarations
