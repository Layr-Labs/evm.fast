import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify620
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body636_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a0"])

def body636_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def body636_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def body636_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "Lc",
      Flapjack.Exp.var Flapjack.VarKind.local "Lc"])

def body636_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H", Flapjack.Exp.var Flapjack.VarKind.local "Hc",
      Flapjack.Exp.var Flapjack.VarKind.local "Hc"])

def body636_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Lc" (Flapjack.Exp.const 0#64)

def body636_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Hc" (Flapjack.Exp.const 0#64)

def body636_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d0"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "H"])

def body636_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L" (Flapjack.Exp.const 0#64)

def body636_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H" (Flapjack.Exp.const 0#64)

def body636_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a1"])

def body636_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Lc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "Lc",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def body636_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Hc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "Hc",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def body636_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d1"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def body636_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a1"])

def body636_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d2"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def body636_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def body636_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d3"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def body636_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def body636_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def body636_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d4"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def body636_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def body636_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def body636_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d5"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def body636_31 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def body636_32 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def body636_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def body636_34 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d6"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_35 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_36 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def body636_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def body636_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def body636_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d7"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_40 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def body636_42 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def body636_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def body636_44 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d8"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_45 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def body636_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def body636_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d9"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_50 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def body636_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def body636_52 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d10"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_53 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_54 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def body636_55 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d11"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_56 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_57 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def body636_58 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d12"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_59 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_60 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d13"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_61 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def body636_62 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d14"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def body636_63 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d15" (Flapjack.Exp.var Flapjack.VarKind.local "c")

def body636_64 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "t0") (Flapjack.Exp.const 32#64))

def body636_65 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_66 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64))

def body636_67 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_68 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t3", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_69 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_70 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t5", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_71 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_72 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def body636_73 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sa")])

def body636_74 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sa")])

def body636_75 : Prog (BitVec 64) :=
.seq body636_73 body636_74

def body636_76 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body636_75

def body636_77 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 0#64)) body636_76

def body636_78 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 18446744069414584321#64]]

def body636_79 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "ltp"])

def body636_80 : Prog (BitVec 64) :=
.seq body636_78 body636_79

def body636_81 : Prog (BitVec 64) :=
.decCall ("ltp") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) body636_80

def body636_82 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "c")) body636_81

def body636_83 : Prog (BitVec 64) :=
Flapjack.Prog.call none "p256_fp_reduce" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body636_84 : Prog (BitVec 64) :=
.seq body636_82 body636_83

def body636_85 : Prog (BitVec 64) :=
.seq body636_77 body636_84

def body636_86 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v0",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v1")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v2",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v3")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v4",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v5")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v6",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v7")
          (Flapjack.Exp.const 32#64)]]) body636_85

def body636_87 : Prog (BitVec 64) :=
.seq body636_66 body636_86

def body636_88 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_87

def body636_89 : Prog (BitVec 64) :=
.seq body636_72 body636_88

def body636_90 : Prog (BitVec 64) :=
.seq body636_66 body636_89

def body636_91 : Prog (BitVec 64) :=
.dec ("v6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_90

def body636_92 : Prog (BitVec 64) :=
.seq body636_71 body636_91

def body636_93 : Prog (BitVec 64) :=
.seq body636_66 body636_92

def body636_94 : Prog (BitVec 64) :=
.dec ("v5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_93

def body636_95 : Prog (BitVec 64) :=
.seq body636_70 body636_94

def body636_96 : Prog (BitVec 64) :=
.seq body636_66 body636_95

def body636_97 : Prog (BitVec 64) :=
.dec ("v4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_96

def body636_98 : Prog (BitVec 64) :=
.seq body636_69 body636_97

def body636_99 : Prog (BitVec 64) :=
.seq body636_66 body636_98

def body636_100 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_99

def body636_101 : Prog (BitVec 64) :=
.seq body636_68 body636_100

def body636_102 : Prog (BitVec 64) :=
.seq body636_66 body636_101

def body636_103 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_102

def body636_104 : Prog (BitVec 64) :=
.seq body636_67 body636_103

def body636_105 : Prog (BitVec 64) :=
.seq body636_66 body636_104

def body636_106 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_105

def body636_107 : Prog (BitVec 64) :=
.seq body636_65 body636_106

def body636_108 : Prog (BitVec 64) :=
.seq body636_64 body636_107

def body636_109 : Prog (BitVec 64) :=
.dec ("v0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.const 4294967295#64]) body636_108

def body636_110 : Prog (BitVec 64) :=
.dec ("t7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d7", Flapjack.Exp.var Flapjack.VarKind.local "d15",
                    Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "d15",
                    Flapjack.Exp.var Flapjack.VarKind.local "d8"],
                Flapjack.Exp.var Flapjack.VarKind.local "d10"],
            Flapjack.Exp.var Flapjack.VarKind.local "d11"],
        Flapjack.Exp.var Flapjack.VarKind.local "d12"],
    Flapjack.Exp.var Flapjack.VarKind.local "d13"]) body636_109

def body636_111 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d6", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15",
            Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) body636_110

def body636_112 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d5", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d10"],
    Flapjack.Exp.var Flapjack.VarKind.local "d11"]) body636_111

def body636_113 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d4", Flapjack.Exp.var Flapjack.VarKind.local "d12",
            Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14"],
        Flapjack.Exp.var Flapjack.VarKind.local "d9"],
    Flapjack.Exp.var Flapjack.VarKind.local "d10"]) body636_112

def body636_114 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d3", Flapjack.Exp.var Flapjack.VarKind.local "d11",
                Flapjack.Exp.var Flapjack.VarKind.local "d11", Flapjack.Exp.var Flapjack.VarKind.local "d12",
                Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13"],
            Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) body636_113

def body636_115 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d2", Flapjack.Exp.var Flapjack.VarKind.local "d10",
                Flapjack.Exp.var Flapjack.VarKind.local "d11"],
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d14"],
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) body636_114

def body636_116 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "d9",
                    Flapjack.Exp.var Flapjack.VarKind.local "d10"],
                Flapjack.Exp.var Flapjack.VarKind.local "d12"],
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d14"],
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) body636_115

def body636_117 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "d8",
                    Flapjack.Exp.var Flapjack.VarKind.local "d9"],
                Flapjack.Exp.var Flapjack.VarKind.local "d11"],
            Flapjack.Exp.var Flapjack.VarKind.local "d12"],
        Flapjack.Exp.var Flapjack.VarKind.local "d13"],
    Flapjack.Exp.var Flapjack.VarKind.local "d14"]) body636_116

def body636_118 : Prog (BitVec 64) :=
.seq body636_63 body636_117

def body636_119 : Prog (BitVec 64) :=
.seq body636_11 body636_118

def body636_120 : Prog (BitVec 64) :=
.seq body636_10 body636_119

def body636_121 : Prog (BitVec 64) :=
.seq body636_9 body636_120

def body636_122 : Prog (BitVec 64) :=
.seq body636_62 body636_121

def body636_123 : Prog (BitVec 64) :=
.seq body636_7 body636_122

def body636_124 : Prog (BitVec 64) :=
.seq body636_6 body636_123

def body636_125 : Prog (BitVec 64) :=
.seq body636_5 body636_124

def body636_126 : Prog (BitVec 64) :=
.seq body636_4 body636_125

def body636_127 : Prog (BitVec 64) :=
.seq body636_3 body636_126

def body636_128 : Prog (BitVec 64) :=
.seq body636_2 body636_127

def body636_129 : Prog (BitVec 64) :=
.seq body636_1 body636_128

def body636_130 : Prog (BitVec 64) :=
.seq body636_61 body636_129

def body636_131 : Prog (BitVec 64) :=
.seq body636_11 body636_130

def body636_132 : Prog (BitVec 64) :=
.seq body636_10 body636_131

def body636_133 : Prog (BitVec 64) :=
.seq body636_9 body636_132

def body636_134 : Prog (BitVec 64) :=
.seq body636_60 body636_133

def body636_135 : Prog (BitVec 64) :=
.seq body636_7 body636_134

def body636_136 : Prog (BitVec 64) :=
.seq body636_6 body636_135

def body636_137 : Prog (BitVec 64) :=
.seq body636_5 body636_136

def body636_138 : Prog (BitVec 64) :=
.seq body636_4 body636_137

def body636_139 : Prog (BitVec 64) :=
.seq body636_3 body636_138

def body636_140 : Prog (BitVec 64) :=
.seq body636_14 body636_139

def body636_141 : Prog (BitVec 64) :=
.seq body636_13 body636_140

def body636_142 : Prog (BitVec 64) :=
.seq body636_59 body636_141

def body636_143 : Prog (BitVec 64) :=
.seq body636_11 body636_142

def body636_144 : Prog (BitVec 64) :=
.seq body636_10 body636_143

def body636_145 : Prog (BitVec 64) :=
.seq body636_9 body636_144

def body636_146 : Prog (BitVec 64) :=
.seq body636_58 body636_145

def body636_147 : Prog (BitVec 64) :=
.seq body636_7 body636_146

def body636_148 : Prog (BitVec 64) :=
.seq body636_6 body636_147

def body636_149 : Prog (BitVec 64) :=
.seq body636_5 body636_148

def body636_150 : Prog (BitVec 64) :=
.seq body636_4 body636_149

def body636_151 : Prog (BitVec 64) :=
.seq body636_3 body636_150

def body636_152 : Prog (BitVec 64) :=
.seq body636_2 body636_151

def body636_153 : Prog (BitVec 64) :=
.seq body636_1 body636_152

def body636_154 : Prog (BitVec 64) :=
.seq body636_57 body636_153

def body636_155 : Prog (BitVec 64) :=
.seq body636_14 body636_154

def body636_156 : Prog (BitVec 64) :=
.seq body636_13 body636_155

def body636_157 : Prog (BitVec 64) :=
.seq body636_56 body636_156

def body636_158 : Prog (BitVec 64) :=
.seq body636_11 body636_157

def body636_159 : Prog (BitVec 64) :=
.seq body636_10 body636_158

def body636_160 : Prog (BitVec 64) :=
.seq body636_9 body636_159

def body636_161 : Prog (BitVec 64) :=
.seq body636_55 body636_160

def body636_162 : Prog (BitVec 64) :=
.seq body636_7 body636_161

def body636_163 : Prog (BitVec 64) :=
.seq body636_6 body636_162

def body636_164 : Prog (BitVec 64) :=
.seq body636_5 body636_163

def body636_165 : Prog (BitVec 64) :=
.seq body636_4 body636_164

def body636_166 : Prog (BitVec 64) :=
.seq body636_3 body636_165

def body636_167 : Prog (BitVec 64) :=
.seq body636_14 body636_166

def body636_168 : Prog (BitVec 64) :=
.seq body636_13 body636_167

def body636_169 : Prog (BitVec 64) :=
.seq body636_54 body636_168

def body636_170 : Prog (BitVec 64) :=
.seq body636_14 body636_169

def body636_171 : Prog (BitVec 64) :=
.seq body636_13 body636_170

def body636_172 : Prog (BitVec 64) :=
.seq body636_53 body636_171

def body636_173 : Prog (BitVec 64) :=
.seq body636_11 body636_172

def body636_174 : Prog (BitVec 64) :=
.seq body636_10 body636_173

def body636_175 : Prog (BitVec 64) :=
.seq body636_9 body636_174

def body636_176 : Prog (BitVec 64) :=
.seq body636_52 body636_175

def body636_177 : Prog (BitVec 64) :=
.seq body636_7 body636_176

def body636_178 : Prog (BitVec 64) :=
.seq body636_6 body636_177

def body636_179 : Prog (BitVec 64) :=
.seq body636_5 body636_178

def body636_180 : Prog (BitVec 64) :=
.seq body636_4 body636_179

def body636_181 : Prog (BitVec 64) :=
.seq body636_3 body636_180

def body636_182 : Prog (BitVec 64) :=
.seq body636_2 body636_181

def body636_183 : Prog (BitVec 64) :=
.seq body636_1 body636_182

def body636_184 : Prog (BitVec 64) :=
.seq body636_51 body636_183

def body636_185 : Prog (BitVec 64) :=
.seq body636_14 body636_184

def body636_186 : Prog (BitVec 64) :=
.seq body636_13 body636_185

def body636_187 : Prog (BitVec 64) :=
.seq body636_50 body636_186

def body636_188 : Prog (BitVec 64) :=
.seq body636_14 body636_187

def body636_189 : Prog (BitVec 64) :=
.seq body636_13 body636_188

def body636_190 : Prog (BitVec 64) :=
.seq body636_49 body636_189

def body636_191 : Prog (BitVec 64) :=
.seq body636_11 body636_190

def body636_192 : Prog (BitVec 64) :=
.seq body636_10 body636_191

def body636_193 : Prog (BitVec 64) :=
.seq body636_9 body636_192

def body636_194 : Prog (BitVec 64) :=
.seq body636_48 body636_193

def body636_195 : Prog (BitVec 64) :=
.seq body636_7 body636_194

def body636_196 : Prog (BitVec 64) :=
.seq body636_6 body636_195

def body636_197 : Prog (BitVec 64) :=
.seq body636_5 body636_196

def body636_198 : Prog (BitVec 64) :=
.seq body636_4 body636_197

def body636_199 : Prog (BitVec 64) :=
.seq body636_3 body636_198

def body636_200 : Prog (BitVec 64) :=
.seq body636_14 body636_199

def body636_201 : Prog (BitVec 64) :=
.seq body636_13 body636_200

def body636_202 : Prog (BitVec 64) :=
.seq body636_47 body636_201

def body636_203 : Prog (BitVec 64) :=
.seq body636_14 body636_202

def body636_204 : Prog (BitVec 64) :=
.seq body636_13 body636_203

def body636_205 : Prog (BitVec 64) :=
.seq body636_46 body636_204

def body636_206 : Prog (BitVec 64) :=
.seq body636_14 body636_205

def body636_207 : Prog (BitVec 64) :=
.seq body636_13 body636_206

def body636_208 : Prog (BitVec 64) :=
.seq body636_45 body636_207

def body636_209 : Prog (BitVec 64) :=
.seq body636_11 body636_208

def body636_210 : Prog (BitVec 64) :=
.seq body636_10 body636_209

def body636_211 : Prog (BitVec 64) :=
.seq body636_9 body636_210

def body636_212 : Prog (BitVec 64) :=
.seq body636_44 body636_211

def body636_213 : Prog (BitVec 64) :=
.seq body636_7 body636_212

def body636_214 : Prog (BitVec 64) :=
.seq body636_6 body636_213

def body636_215 : Prog (BitVec 64) :=
.seq body636_5 body636_214

def body636_216 : Prog (BitVec 64) :=
.seq body636_4 body636_215

def body636_217 : Prog (BitVec 64) :=
.seq body636_3 body636_216

def body636_218 : Prog (BitVec 64) :=
.seq body636_2 body636_217

def body636_219 : Prog (BitVec 64) :=
.seq body636_1 body636_218

def body636_220 : Prog (BitVec 64) :=
.seq body636_43 body636_219

def body636_221 : Prog (BitVec 64) :=
.seq body636_14 body636_220

def body636_222 : Prog (BitVec 64) :=
.seq body636_13 body636_221

def body636_223 : Prog (BitVec 64) :=
.seq body636_42 body636_222

def body636_224 : Prog (BitVec 64) :=
.seq body636_14 body636_223

def body636_225 : Prog (BitVec 64) :=
.seq body636_13 body636_224

def body636_226 : Prog (BitVec 64) :=
.seq body636_41 body636_225

def body636_227 : Prog (BitVec 64) :=
.seq body636_14 body636_226

def body636_228 : Prog (BitVec 64) :=
.seq body636_13 body636_227

def body636_229 : Prog (BitVec 64) :=
.seq body636_40 body636_228

def body636_230 : Prog (BitVec 64) :=
.seq body636_11 body636_229

def body636_231 : Prog (BitVec 64) :=
.seq body636_10 body636_230

def body636_232 : Prog (BitVec 64) :=
.seq body636_9 body636_231

def body636_233 : Prog (BitVec 64) :=
.seq body636_39 body636_232

def body636_234 : Prog (BitVec 64) :=
.seq body636_7 body636_233

def body636_235 : Prog (BitVec 64) :=
.seq body636_6 body636_234

def body636_236 : Prog (BitVec 64) :=
.seq body636_5 body636_235

def body636_237 : Prog (BitVec 64) :=
.seq body636_4 body636_236

def body636_238 : Prog (BitVec 64) :=
.seq body636_3 body636_237

def body636_239 : Prog (BitVec 64) :=
.seq body636_14 body636_238

def body636_240 : Prog (BitVec 64) :=
.seq body636_13 body636_239

def body636_241 : Prog (BitVec 64) :=
.seq body636_38 body636_240

def body636_242 : Prog (BitVec 64) :=
.seq body636_14 body636_241

def body636_243 : Prog (BitVec 64) :=
.seq body636_13 body636_242

def body636_244 : Prog (BitVec 64) :=
.seq body636_37 body636_243

def body636_245 : Prog (BitVec 64) :=
.seq body636_14 body636_244

def body636_246 : Prog (BitVec 64) :=
.seq body636_13 body636_245

def body636_247 : Prog (BitVec 64) :=
.seq body636_36 body636_246

def body636_248 : Prog (BitVec 64) :=
.seq body636_14 body636_247

def body636_249 : Prog (BitVec 64) :=
.seq body636_13 body636_248

def body636_250 : Prog (BitVec 64) :=
.seq body636_35 body636_249

def body636_251 : Prog (BitVec 64) :=
.seq body636_11 body636_250

def body636_252 : Prog (BitVec 64) :=
.seq body636_10 body636_251

def body636_253 : Prog (BitVec 64) :=
.seq body636_9 body636_252

def body636_254 : Prog (BitVec 64) :=
.seq body636_34 body636_253

def body636_255 : Prog (BitVec 64) :=
.seq body636_7 body636_254

def body636_256 : Prog (BitVec 64) :=
.seq body636_6 body636_255

def body636_257 : Prog (BitVec 64) :=
.seq body636_5 body636_256

def body636_258 : Prog (BitVec 64) :=
.seq body636_4 body636_257

def body636_259 : Prog (BitVec 64) :=
.seq body636_3 body636_258

def body636_260 : Prog (BitVec 64) :=
.seq body636_2 body636_259

def body636_261 : Prog (BitVec 64) :=
.seq body636_1 body636_260

def body636_262 : Prog (BitVec 64) :=
.seq body636_33 body636_261

def body636_263 : Prog (BitVec 64) :=
.seq body636_14 body636_262

def body636_264 : Prog (BitVec 64) :=
.seq body636_13 body636_263

def body636_265 : Prog (BitVec 64) :=
.seq body636_32 body636_264

def body636_266 : Prog (BitVec 64) :=
.seq body636_14 body636_265

def body636_267 : Prog (BitVec 64) :=
.seq body636_13 body636_266

def body636_268 : Prog (BitVec 64) :=
.seq body636_31 body636_267

def body636_269 : Prog (BitVec 64) :=
.seq body636_14 body636_268

def body636_270 : Prog (BitVec 64) :=
.seq body636_13 body636_269

def body636_271 : Prog (BitVec 64) :=
.seq body636_30 body636_270

def body636_272 : Prog (BitVec 64) :=
.seq body636_11 body636_271

def body636_273 : Prog (BitVec 64) :=
.seq body636_10 body636_272

def body636_274 : Prog (BitVec 64) :=
.seq body636_9 body636_273

def body636_275 : Prog (BitVec 64) :=
.seq body636_29 body636_274

def body636_276 : Prog (BitVec 64) :=
.seq body636_7 body636_275

def body636_277 : Prog (BitVec 64) :=
.seq body636_6 body636_276

def body636_278 : Prog (BitVec 64) :=
.seq body636_5 body636_277

def body636_279 : Prog (BitVec 64) :=
.seq body636_4 body636_278

def body636_280 : Prog (BitVec 64) :=
.seq body636_3 body636_279

def body636_281 : Prog (BitVec 64) :=
.seq body636_14 body636_280

def body636_282 : Prog (BitVec 64) :=
.seq body636_13 body636_281

def body636_283 : Prog (BitVec 64) :=
.seq body636_28 body636_282

def body636_284 : Prog (BitVec 64) :=
.seq body636_14 body636_283

def body636_285 : Prog (BitVec 64) :=
.seq body636_13 body636_284

def body636_286 : Prog (BitVec 64) :=
.seq body636_27 body636_285

def body636_287 : Prog (BitVec 64) :=
.seq body636_14 body636_286

def body636_288 : Prog (BitVec 64) :=
.seq body636_13 body636_287

def body636_289 : Prog (BitVec 64) :=
.seq body636_26 body636_288

def body636_290 : Prog (BitVec 64) :=
.seq body636_11 body636_289

def body636_291 : Prog (BitVec 64) :=
.seq body636_10 body636_290

def body636_292 : Prog (BitVec 64) :=
.seq body636_9 body636_291

def body636_293 : Prog (BitVec 64) :=
.seq body636_25 body636_292

def body636_294 : Prog (BitVec 64) :=
.seq body636_7 body636_293

def body636_295 : Prog (BitVec 64) :=
.seq body636_6 body636_294

def body636_296 : Prog (BitVec 64) :=
.seq body636_5 body636_295

def body636_297 : Prog (BitVec 64) :=
.seq body636_4 body636_296

def body636_298 : Prog (BitVec 64) :=
.seq body636_3 body636_297

def body636_299 : Prog (BitVec 64) :=
.seq body636_2 body636_298

def body636_300 : Prog (BitVec 64) :=
.seq body636_1 body636_299

def body636_301 : Prog (BitVec 64) :=
.seq body636_24 body636_300

def body636_302 : Prog (BitVec 64) :=
.seq body636_14 body636_301

def body636_303 : Prog (BitVec 64) :=
.seq body636_13 body636_302

def body636_304 : Prog (BitVec 64) :=
.seq body636_23 body636_303

def body636_305 : Prog (BitVec 64) :=
.seq body636_14 body636_304

def body636_306 : Prog (BitVec 64) :=
.seq body636_13 body636_305

def body636_307 : Prog (BitVec 64) :=
.seq body636_22 body636_306

def body636_308 : Prog (BitVec 64) :=
.seq body636_11 body636_307

def body636_309 : Prog (BitVec 64) :=
.seq body636_10 body636_308

def body636_310 : Prog (BitVec 64) :=
.seq body636_9 body636_309

def body636_311 : Prog (BitVec 64) :=
.seq body636_21 body636_310

def body636_312 : Prog (BitVec 64) :=
.seq body636_7 body636_311

def body636_313 : Prog (BitVec 64) :=
.seq body636_6 body636_312

def body636_314 : Prog (BitVec 64) :=
.seq body636_5 body636_313

def body636_315 : Prog (BitVec 64) :=
.seq body636_4 body636_314

def body636_316 : Prog (BitVec 64) :=
.seq body636_3 body636_315

def body636_317 : Prog (BitVec 64) :=
.seq body636_14 body636_316

def body636_318 : Prog (BitVec 64) :=
.seq body636_13 body636_317

def body636_319 : Prog (BitVec 64) :=
.seq body636_20 body636_318

def body636_320 : Prog (BitVec 64) :=
.seq body636_14 body636_319

def body636_321 : Prog (BitVec 64) :=
.seq body636_13 body636_320

def body636_322 : Prog (BitVec 64) :=
.seq body636_19 body636_321

def body636_323 : Prog (BitVec 64) :=
.seq body636_11 body636_322

def body636_324 : Prog (BitVec 64) :=
.seq body636_10 body636_323

def body636_325 : Prog (BitVec 64) :=
.seq body636_9 body636_324

def body636_326 : Prog (BitVec 64) :=
.seq body636_18 body636_325

def body636_327 : Prog (BitVec 64) :=
.seq body636_7 body636_326

def body636_328 : Prog (BitVec 64) :=
.seq body636_6 body636_327

def body636_329 : Prog (BitVec 64) :=
.seq body636_5 body636_328

def body636_330 : Prog (BitVec 64) :=
.seq body636_4 body636_329

def body636_331 : Prog (BitVec 64) :=
.seq body636_3 body636_330

def body636_332 : Prog (BitVec 64) :=
.seq body636_2 body636_331

def body636_333 : Prog (BitVec 64) :=
.seq body636_1 body636_332

def body636_334 : Prog (BitVec 64) :=
.seq body636_17 body636_333

def body636_335 : Prog (BitVec 64) :=
.seq body636_14 body636_334

def body636_336 : Prog (BitVec 64) :=
.seq body636_13 body636_335

def body636_337 : Prog (BitVec 64) :=
.seq body636_16 body636_336

def body636_338 : Prog (BitVec 64) :=
.seq body636_11 body636_337

def body636_339 : Prog (BitVec 64) :=
.seq body636_10 body636_338

def body636_340 : Prog (BitVec 64) :=
.seq body636_9 body636_339

def body636_341 : Prog (BitVec 64) :=
.seq body636_15 body636_340

def body636_342 : Prog (BitVec 64) :=
.seq body636_7 body636_341

def body636_343 : Prog (BitVec 64) :=
.seq body636_6 body636_342

def body636_344 : Prog (BitVec 64) :=
.seq body636_5 body636_343

def body636_345 : Prog (BitVec 64) :=
.seq body636_4 body636_344

def body636_346 : Prog (BitVec 64) :=
.seq body636_3 body636_345

def body636_347 : Prog (BitVec 64) :=
.seq body636_14 body636_346

def body636_348 : Prog (BitVec 64) :=
.seq body636_13 body636_347

def body636_349 : Prog (BitVec 64) :=
.seq body636_12 body636_348

def body636_350 : Prog (BitVec 64) :=
.seq body636_11 body636_349

def body636_351 : Prog (BitVec 64) :=
.seq body636_10 body636_350

def body636_352 : Prog (BitVec 64) :=
.seq body636_9 body636_351

def body636_353 : Prog (BitVec 64) :=
.seq body636_8 body636_352

def body636_354 : Prog (BitVec 64) :=
.seq body636_7 body636_353

def body636_355 : Prog (BitVec 64) :=
.seq body636_6 body636_354

def body636_356 : Prog (BitVec 64) :=
.seq body636_5 body636_355

def body636_357 : Prog (BitVec 64) :=
.seq body636_4 body636_356

def body636_358 : Prog (BitVec 64) :=
.seq body636_3 body636_357

def body636_359 : Prog (BitVec 64) :=
.seq body636_2 body636_358

def body636_360 : Prog (BitVec 64) :=
.seq body636_1 body636_359

def body636_361 : Prog (BitVec 64) :=
.seq body636_0 body636_360

def body636_362 : Prog (BitVec 64) :=
.dec ("d15") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_361

def body636_363 : Prog (BitVec 64) :=
.dec ("d14") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_362

def body636_364 : Prog (BitVec 64) :=
.dec ("d13") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_363

def body636_365 : Prog (BitVec 64) :=
.dec ("d12") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_364

def body636_366 : Prog (BitVec 64) :=
.dec ("d11") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_365

def body636_367 : Prog (BitVec 64) :=
.dec ("d10") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_366

def body636_368 : Prog (BitVec 64) :=
.dec ("d9") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_367

def body636_369 : Prog (BitVec 64) :=
.dec ("d8") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_368

def body636_370 : Prog (BitVec 64) :=
.dec ("d7") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_369

def body636_371 : Prog (BitVec 64) :=
.dec ("d6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_370

def body636_372 : Prog (BitVec 64) :=
.dec ("d5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_371

def body636_373 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_372

def body636_374 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_373

def body636_375 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_374

def body636_376 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_375

def body636_377 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_376

def body636_378 : Prog (BitVec 64) :=
.dec ("col") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_377

def body636_379 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_378

def body636_380 : Prog (BitVec 64) :=
.dec ("Hc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_379

def body636_381 : Prog (BitVec 64) :=
.dec ("Lc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_380

def body636_382 : Prog (BitVec 64) :=
.dec ("H") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_381

def body636_383 : Prog (BitVec 64) :=
.dec ("L") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_382

def body636_384 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_383

def body636_385 : Prog (BitVec 64) :=
.dec ("a7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_384

def body636_386 : Prog (BitVec 64) :=
.dec ("a6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_385

def body636_387 : Prog (BitVec 64) :=
.dec ("a5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_386

def body636_388 : Prog (BitVec 64) :=
.dec ("a4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_387

def body636_389 : Prog (BitVec 64) :=
.dec ("a3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_388

def body636_390 : Prog (BitVec 64) :=
.dec ("a2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_389

def body636_391 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_390

def body636_392 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_391

def body636_393 : Prog (BitVec 64) :=
.seq body636_0 body636_1

def body636_394 : Prog (BitVec 64) :=
.seq body636_393 body636_2

def body636_395 : Prog (BitVec 64) :=
.seq body636_394 body636_3

def body636_396 : Prog (BitVec 64) :=
.seq body636_395 body636_4

def body636_397 : Prog (BitVec 64) :=
.seq body636_396 body636_5

def body636_398 : Prog (BitVec 64) :=
.seq body636_397 body636_6

def body636_399 : Prog (BitVec 64) :=
.seq body636_398 body636_7

def body636_400 : Prog (BitVec 64) :=
.seq body636_399 body636_8

def body636_401 : Prog (BitVec 64) :=
.seq body636_400 body636_9

def body636_402 : Prog (BitVec 64) :=
.seq body636_401 body636_10

def body636_403 : Prog (BitVec 64) :=
.seq body636_402 body636_11

def body636_404 : Prog (BitVec 64) :=
.seq body636_403 body636_12

def body636_405 : Prog (BitVec 64) :=
.seq body636_404 body636_13

def body636_406 : Prog (BitVec 64) :=
.seq body636_405 body636_14

def body636_407 : Prog (BitVec 64) :=
.seq body636_406 body636_3

def body636_408 : Prog (BitVec 64) :=
.seq body636_407 body636_4

def body636_409 : Prog (BitVec 64) :=
.seq body636_408 body636_5

def body636_410 : Prog (BitVec 64) :=
.seq body636_409 body636_6

def body636_411 : Prog (BitVec 64) :=
.seq body636_410 body636_7

def body636_412 : Prog (BitVec 64) :=
.seq body636_411 body636_15

def body636_413 : Prog (BitVec 64) :=
.seq body636_412 body636_9

def body636_414 : Prog (BitVec 64) :=
.seq body636_413 body636_10

def body636_415 : Prog (BitVec 64) :=
.seq body636_414 body636_11

def body636_416 : Prog (BitVec 64) :=
.seq body636_415 body636_16

def body636_417 : Prog (BitVec 64) :=
.seq body636_416 body636_13

def body636_418 : Prog (BitVec 64) :=
.seq body636_417 body636_14

def body636_419 : Prog (BitVec 64) :=
.seq body636_418 body636_17

def body636_420 : Prog (BitVec 64) :=
.seq body636_419 body636_1

def body636_421 : Prog (BitVec 64) :=
.seq body636_420 body636_2

def body636_422 : Prog (BitVec 64) :=
.seq body636_421 body636_3

def body636_423 : Prog (BitVec 64) :=
.seq body636_422 body636_4

def body636_424 : Prog (BitVec 64) :=
.seq body636_423 body636_5

def body636_425 : Prog (BitVec 64) :=
.seq body636_424 body636_6

def body636_426 : Prog (BitVec 64) :=
.seq body636_425 body636_7

def body636_427 : Prog (BitVec 64) :=
.seq body636_426 body636_18

def body636_428 : Prog (BitVec 64) :=
.seq body636_427 body636_9

def body636_429 : Prog (BitVec 64) :=
.seq body636_428 body636_10

def body636_430 : Prog (BitVec 64) :=
.seq body636_429 body636_11

def body636_431 : Prog (BitVec 64) :=
.seq body636_430 body636_19

def body636_432 : Prog (BitVec 64) :=
.seq body636_431 body636_13

def body636_433 : Prog (BitVec 64) :=
.seq body636_432 body636_14

def body636_434 : Prog (BitVec 64) :=
.seq body636_433 body636_20

def body636_435 : Prog (BitVec 64) :=
.seq body636_434 body636_13

def body636_436 : Prog (BitVec 64) :=
.seq body636_435 body636_14

def body636_437 : Prog (BitVec 64) :=
.seq body636_436 body636_3

def body636_438 : Prog (BitVec 64) :=
.seq body636_437 body636_4

def body636_439 : Prog (BitVec 64) :=
.seq body636_438 body636_5

def body636_440 : Prog (BitVec 64) :=
.seq body636_439 body636_6

def body636_441 : Prog (BitVec 64) :=
.seq body636_440 body636_7

def body636_442 : Prog (BitVec 64) :=
.seq body636_441 body636_21

def body636_443 : Prog (BitVec 64) :=
.seq body636_442 body636_9

def body636_444 : Prog (BitVec 64) :=
.seq body636_443 body636_10

def body636_445 : Prog (BitVec 64) :=
.seq body636_444 body636_11

def body636_446 : Prog (BitVec 64) :=
.seq body636_445 body636_22

def body636_447 : Prog (BitVec 64) :=
.seq body636_446 body636_13

def body636_448 : Prog (BitVec 64) :=
.seq body636_447 body636_14

def body636_449 : Prog (BitVec 64) :=
.seq body636_448 body636_23

def body636_450 : Prog (BitVec 64) :=
.seq body636_449 body636_13

def body636_451 : Prog (BitVec 64) :=
.seq body636_450 body636_14

def body636_452 : Prog (BitVec 64) :=
.seq body636_451 body636_24

def body636_453 : Prog (BitVec 64) :=
.seq body636_452 body636_1

def body636_454 : Prog (BitVec 64) :=
.seq body636_453 body636_2

def body636_455 : Prog (BitVec 64) :=
.seq body636_454 body636_3

def body636_456 : Prog (BitVec 64) :=
.seq body636_455 body636_4

def body636_457 : Prog (BitVec 64) :=
.seq body636_456 body636_5

def body636_458 : Prog (BitVec 64) :=
.seq body636_457 body636_6

def body636_459 : Prog (BitVec 64) :=
.seq body636_458 body636_7

def body636_460 : Prog (BitVec 64) :=
.seq body636_459 body636_25

def body636_461 : Prog (BitVec 64) :=
.seq body636_460 body636_9

def body636_462 : Prog (BitVec 64) :=
.seq body636_461 body636_10

def body636_463 : Prog (BitVec 64) :=
.seq body636_462 body636_11

def body636_464 : Prog (BitVec 64) :=
.seq body636_463 body636_26

def body636_465 : Prog (BitVec 64) :=
.seq body636_464 body636_13

def body636_466 : Prog (BitVec 64) :=
.seq body636_465 body636_14

def body636_467 : Prog (BitVec 64) :=
.seq body636_466 body636_27

def body636_468 : Prog (BitVec 64) :=
.seq body636_467 body636_13

def body636_469 : Prog (BitVec 64) :=
.seq body636_468 body636_14

def body636_470 : Prog (BitVec 64) :=
.seq body636_469 body636_28

def body636_471 : Prog (BitVec 64) :=
.seq body636_470 body636_13

def body636_472 : Prog (BitVec 64) :=
.seq body636_471 body636_14

def body636_473 : Prog (BitVec 64) :=
.seq body636_472 body636_3

def body636_474 : Prog (BitVec 64) :=
.seq body636_473 body636_4

def body636_475 : Prog (BitVec 64) :=
.seq body636_474 body636_5

def body636_476 : Prog (BitVec 64) :=
.seq body636_475 body636_6

def body636_477 : Prog (BitVec 64) :=
.seq body636_476 body636_7

def body636_478 : Prog (BitVec 64) :=
.seq body636_477 body636_29

def body636_479 : Prog (BitVec 64) :=
.seq body636_478 body636_9

def body636_480 : Prog (BitVec 64) :=
.seq body636_479 body636_10

def body636_481 : Prog (BitVec 64) :=
.seq body636_480 body636_11

def body636_482 : Prog (BitVec 64) :=
.seq body636_481 body636_30

def body636_483 : Prog (BitVec 64) :=
.seq body636_482 body636_13

def body636_484 : Prog (BitVec 64) :=
.seq body636_483 body636_14

def body636_485 : Prog (BitVec 64) :=
.seq body636_484 body636_31

def body636_486 : Prog (BitVec 64) :=
.seq body636_485 body636_13

def body636_487 : Prog (BitVec 64) :=
.seq body636_486 body636_14

def body636_488 : Prog (BitVec 64) :=
.seq body636_487 body636_32

def body636_489 : Prog (BitVec 64) :=
.seq body636_488 body636_13

def body636_490 : Prog (BitVec 64) :=
.seq body636_489 body636_14

def body636_491 : Prog (BitVec 64) :=
.seq body636_490 body636_33

def body636_492 : Prog (BitVec 64) :=
.seq body636_491 body636_1

def body636_493 : Prog (BitVec 64) :=
.seq body636_492 body636_2

def body636_494 : Prog (BitVec 64) :=
.seq body636_493 body636_3

def body636_495 : Prog (BitVec 64) :=
.seq body636_494 body636_4

def body636_496 : Prog (BitVec 64) :=
.seq body636_495 body636_5

def body636_497 : Prog (BitVec 64) :=
.seq body636_496 body636_6

def body636_498 : Prog (BitVec 64) :=
.seq body636_497 body636_7

def body636_499 : Prog (BitVec 64) :=
.seq body636_498 body636_34

def body636_500 : Prog (BitVec 64) :=
.seq body636_499 body636_9

def body636_501 : Prog (BitVec 64) :=
.seq body636_500 body636_10

def body636_502 : Prog (BitVec 64) :=
.seq body636_501 body636_11

def body636_503 : Prog (BitVec 64) :=
.seq body636_502 body636_35

def body636_504 : Prog (BitVec 64) :=
.seq body636_503 body636_13

def body636_505 : Prog (BitVec 64) :=
.seq body636_504 body636_14

def body636_506 : Prog (BitVec 64) :=
.seq body636_505 body636_36

def body636_507 : Prog (BitVec 64) :=
.seq body636_506 body636_13

def body636_508 : Prog (BitVec 64) :=
.seq body636_507 body636_14

def body636_509 : Prog (BitVec 64) :=
.seq body636_508 body636_37

def body636_510 : Prog (BitVec 64) :=
.seq body636_509 body636_13

def body636_511 : Prog (BitVec 64) :=
.seq body636_510 body636_14

def body636_512 : Prog (BitVec 64) :=
.seq body636_511 body636_38

def body636_513 : Prog (BitVec 64) :=
.seq body636_512 body636_13

def body636_514 : Prog (BitVec 64) :=
.seq body636_513 body636_14

def body636_515 : Prog (BitVec 64) :=
.seq body636_514 body636_3

def body636_516 : Prog (BitVec 64) :=
.seq body636_515 body636_4

def body636_517 : Prog (BitVec 64) :=
.seq body636_516 body636_5

def body636_518 : Prog (BitVec 64) :=
.seq body636_517 body636_6

def body636_519 : Prog (BitVec 64) :=
.seq body636_518 body636_7

def body636_520 : Prog (BitVec 64) :=
.seq body636_519 body636_39

def body636_521 : Prog (BitVec 64) :=
.seq body636_520 body636_9

def body636_522 : Prog (BitVec 64) :=
.seq body636_521 body636_10

def body636_523 : Prog (BitVec 64) :=
.seq body636_522 body636_11

def body636_524 : Prog (BitVec 64) :=
.seq body636_523 body636_40

def body636_525 : Prog (BitVec 64) :=
.seq body636_524 body636_13

def body636_526 : Prog (BitVec 64) :=
.seq body636_525 body636_14

def body636_527 : Prog (BitVec 64) :=
.seq body636_526 body636_41

def body636_528 : Prog (BitVec 64) :=
.seq body636_527 body636_13

def body636_529 : Prog (BitVec 64) :=
.seq body636_528 body636_14

def body636_530 : Prog (BitVec 64) :=
.seq body636_529 body636_42

def body636_531 : Prog (BitVec 64) :=
.seq body636_530 body636_13

def body636_532 : Prog (BitVec 64) :=
.seq body636_531 body636_14

def body636_533 : Prog (BitVec 64) :=
.seq body636_532 body636_43

def body636_534 : Prog (BitVec 64) :=
.seq body636_533 body636_1

def body636_535 : Prog (BitVec 64) :=
.seq body636_534 body636_2

def body636_536 : Prog (BitVec 64) :=
.seq body636_535 body636_3

def body636_537 : Prog (BitVec 64) :=
.seq body636_536 body636_4

def body636_538 : Prog (BitVec 64) :=
.seq body636_537 body636_5

def body636_539 : Prog (BitVec 64) :=
.seq body636_538 body636_6

def body636_540 : Prog (BitVec 64) :=
.seq body636_539 body636_7

def body636_541 : Prog (BitVec 64) :=
.seq body636_540 body636_44

def body636_542 : Prog (BitVec 64) :=
.seq body636_541 body636_9

def body636_543 : Prog (BitVec 64) :=
.seq body636_542 body636_10

def body636_544 : Prog (BitVec 64) :=
.seq body636_543 body636_11

def body636_545 : Prog (BitVec 64) :=
.seq body636_544 body636_45

def body636_546 : Prog (BitVec 64) :=
.seq body636_545 body636_13

def body636_547 : Prog (BitVec 64) :=
.seq body636_546 body636_14

def body636_548 : Prog (BitVec 64) :=
.seq body636_547 body636_46

def body636_549 : Prog (BitVec 64) :=
.seq body636_548 body636_13

def body636_550 : Prog (BitVec 64) :=
.seq body636_549 body636_14

def body636_551 : Prog (BitVec 64) :=
.seq body636_550 body636_47

def body636_552 : Prog (BitVec 64) :=
.seq body636_551 body636_13

def body636_553 : Prog (BitVec 64) :=
.seq body636_552 body636_14

def body636_554 : Prog (BitVec 64) :=
.seq body636_553 body636_3

def body636_555 : Prog (BitVec 64) :=
.seq body636_554 body636_4

def body636_556 : Prog (BitVec 64) :=
.seq body636_555 body636_5

def body636_557 : Prog (BitVec 64) :=
.seq body636_556 body636_6

def body636_558 : Prog (BitVec 64) :=
.seq body636_557 body636_7

def body636_559 : Prog (BitVec 64) :=
.seq body636_558 body636_48

def body636_560 : Prog (BitVec 64) :=
.seq body636_559 body636_9

def body636_561 : Prog (BitVec 64) :=
.seq body636_560 body636_10

def body636_562 : Prog (BitVec 64) :=
.seq body636_561 body636_11

def body636_563 : Prog (BitVec 64) :=
.seq body636_562 body636_49

def body636_564 : Prog (BitVec 64) :=
.seq body636_563 body636_13

def body636_565 : Prog (BitVec 64) :=
.seq body636_564 body636_14

def body636_566 : Prog (BitVec 64) :=
.seq body636_565 body636_50

def body636_567 : Prog (BitVec 64) :=
.seq body636_566 body636_13

def body636_568 : Prog (BitVec 64) :=
.seq body636_567 body636_14

def body636_569 : Prog (BitVec 64) :=
.seq body636_568 body636_51

def body636_570 : Prog (BitVec 64) :=
.seq body636_569 body636_1

def body636_571 : Prog (BitVec 64) :=
.seq body636_570 body636_2

def body636_572 : Prog (BitVec 64) :=
.seq body636_571 body636_3

def body636_573 : Prog (BitVec 64) :=
.seq body636_572 body636_4

def body636_574 : Prog (BitVec 64) :=
.seq body636_573 body636_5

def body636_575 : Prog (BitVec 64) :=
.seq body636_574 body636_6

def body636_576 : Prog (BitVec 64) :=
.seq body636_575 body636_7

def body636_577 : Prog (BitVec 64) :=
.seq body636_576 body636_52

def body636_578 : Prog (BitVec 64) :=
.seq body636_577 body636_9

def body636_579 : Prog (BitVec 64) :=
.seq body636_578 body636_10

def body636_580 : Prog (BitVec 64) :=
.seq body636_579 body636_11

def body636_581 : Prog (BitVec 64) :=
.seq body636_580 body636_53

def body636_582 : Prog (BitVec 64) :=
.seq body636_581 body636_13

def body636_583 : Prog (BitVec 64) :=
.seq body636_582 body636_14

def body636_584 : Prog (BitVec 64) :=
.seq body636_583 body636_54

def body636_585 : Prog (BitVec 64) :=
.seq body636_584 body636_13

def body636_586 : Prog (BitVec 64) :=
.seq body636_585 body636_14

def body636_587 : Prog (BitVec 64) :=
.seq body636_586 body636_3

def body636_588 : Prog (BitVec 64) :=
.seq body636_587 body636_4

def body636_589 : Prog (BitVec 64) :=
.seq body636_588 body636_5

def body636_590 : Prog (BitVec 64) :=
.seq body636_589 body636_6

def body636_591 : Prog (BitVec 64) :=
.seq body636_590 body636_7

def body636_592 : Prog (BitVec 64) :=
.seq body636_591 body636_55

def body636_593 : Prog (BitVec 64) :=
.seq body636_592 body636_9

def body636_594 : Prog (BitVec 64) :=
.seq body636_593 body636_10

def body636_595 : Prog (BitVec 64) :=
.seq body636_594 body636_11

def body636_596 : Prog (BitVec 64) :=
.seq body636_595 body636_56

def body636_597 : Prog (BitVec 64) :=
.seq body636_596 body636_13

def body636_598 : Prog (BitVec 64) :=
.seq body636_597 body636_14

def body636_599 : Prog (BitVec 64) :=
.seq body636_598 body636_57

def body636_600 : Prog (BitVec 64) :=
.seq body636_599 body636_1

def body636_601 : Prog (BitVec 64) :=
.seq body636_600 body636_2

def body636_602 : Prog (BitVec 64) :=
.seq body636_601 body636_3

def body636_603 : Prog (BitVec 64) :=
.seq body636_602 body636_4

def body636_604 : Prog (BitVec 64) :=
.seq body636_603 body636_5

def body636_605 : Prog (BitVec 64) :=
.seq body636_604 body636_6

def body636_606 : Prog (BitVec 64) :=
.seq body636_605 body636_7

def body636_607 : Prog (BitVec 64) :=
.seq body636_606 body636_58

def body636_608 : Prog (BitVec 64) :=
.seq body636_607 body636_9

def body636_609 : Prog (BitVec 64) :=
.seq body636_608 body636_10

def body636_610 : Prog (BitVec 64) :=
.seq body636_609 body636_11

def body636_611 : Prog (BitVec 64) :=
.seq body636_610 body636_59

def body636_612 : Prog (BitVec 64) :=
.seq body636_611 body636_13

def body636_613 : Prog (BitVec 64) :=
.seq body636_612 body636_14

def body636_614 : Prog (BitVec 64) :=
.seq body636_613 body636_3

def body636_615 : Prog (BitVec 64) :=
.seq body636_614 body636_4

def body636_616 : Prog (BitVec 64) :=
.seq body636_615 body636_5

def body636_617 : Prog (BitVec 64) :=
.seq body636_616 body636_6

def body636_618 : Prog (BitVec 64) :=
.seq body636_617 body636_7

def body636_619 : Prog (BitVec 64) :=
.seq body636_618 body636_60

def body636_620 : Prog (BitVec 64) :=
.seq body636_619 body636_9

def body636_621 : Prog (BitVec 64) :=
.seq body636_620 body636_10

def body636_622 : Prog (BitVec 64) :=
.seq body636_621 body636_11

def body636_623 : Prog (BitVec 64) :=
.seq body636_622 body636_61

def body636_624 : Prog (BitVec 64) :=
.seq body636_623 body636_1

def body636_625 : Prog (BitVec 64) :=
.seq body636_624 body636_2

def body636_626 : Prog (BitVec 64) :=
.seq body636_625 body636_3

def body636_627 : Prog (BitVec 64) :=
.seq body636_626 body636_4

def body636_628 : Prog (BitVec 64) :=
.seq body636_627 body636_5

def body636_629 : Prog (BitVec 64) :=
.seq body636_628 body636_6

def body636_630 : Prog (BitVec 64) :=
.seq body636_629 body636_7

def body636_631 : Prog (BitVec 64) :=
.seq body636_630 body636_62

def body636_632 : Prog (BitVec 64) :=
.seq body636_631 body636_9

def body636_633 : Prog (BitVec 64) :=
.seq body636_632 body636_10

def body636_634 : Prog (BitVec 64) :=
.seq body636_633 body636_11

def body636_635 : Prog (BitVec 64) :=
.seq body636_634 body636_63

def body636_636 : Prog (BitVec 64) :=
.seq body636_64 body636_65

def body636_637 : Prog (BitVec 64) :=
.seq body636_66 body636_67

def body636_638 : Prog (BitVec 64) :=
.seq body636_66 body636_68

def body636_639 : Prog (BitVec 64) :=
.seq body636_66 body636_69

def body636_640 : Prog (BitVec 64) :=
.seq body636_66 body636_70

def body636_641 : Prog (BitVec 64) :=
.seq body636_66 body636_71

def body636_642 : Prog (BitVec 64) :=
.seq body636_66 body636_72

def body636_643 : Prog (BitVec 64) :=
.seq body636_77 body636_82

def body636_644 : Prog (BitVec 64) :=
.seq body636_643 body636_83

def body636_645 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v0",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v1")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v2",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v3")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v4",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v5")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v6",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v7")
          (Flapjack.Exp.const 32#64)]]) body636_644

def body636_646 : Prog (BitVec 64) :=
.seq body636_66 body636_645

def body636_647 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_646

def body636_648 : Prog (BitVec 64) :=
.seq body636_642 body636_647

def body636_649 : Prog (BitVec 64) :=
.dec ("v6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_648

def body636_650 : Prog (BitVec 64) :=
.seq body636_641 body636_649

def body636_651 : Prog (BitVec 64) :=
.dec ("v5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_650

def body636_652 : Prog (BitVec 64) :=
.seq body636_640 body636_651

def body636_653 : Prog (BitVec 64) :=
.dec ("v4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_652

def body636_654 : Prog (BitVec 64) :=
.seq body636_639 body636_653

def body636_655 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_654

def body636_656 : Prog (BitVec 64) :=
.seq body636_638 body636_655

def body636_657 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_656

def body636_658 : Prog (BitVec 64) :=
.seq body636_637 body636_657

def body636_659 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) body636_658

def body636_660 : Prog (BitVec 64) :=
.seq body636_636 body636_659

def body636_661 : Prog (BitVec 64) :=
.dec ("v0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.const 4294967295#64]) body636_660

def body636_662 : Prog (BitVec 64) :=
.dec ("t7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d7", Flapjack.Exp.var Flapjack.VarKind.local "d15",
                    Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "d15",
                    Flapjack.Exp.var Flapjack.VarKind.local "d8"],
                Flapjack.Exp.var Flapjack.VarKind.local "d10"],
            Flapjack.Exp.var Flapjack.VarKind.local "d11"],
        Flapjack.Exp.var Flapjack.VarKind.local "d12"],
    Flapjack.Exp.var Flapjack.VarKind.local "d13"]) body636_661

def body636_663 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d6", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15",
            Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) body636_662

def body636_664 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d5", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d10"],
    Flapjack.Exp.var Flapjack.VarKind.local "d11"]) body636_663

def body636_665 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d4", Flapjack.Exp.var Flapjack.VarKind.local "d12",
            Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14"],
        Flapjack.Exp.var Flapjack.VarKind.local "d9"],
    Flapjack.Exp.var Flapjack.VarKind.local "d10"]) body636_664

def body636_666 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d3", Flapjack.Exp.var Flapjack.VarKind.local "d11",
                Flapjack.Exp.var Flapjack.VarKind.local "d11", Flapjack.Exp.var Flapjack.VarKind.local "d12",
                Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13"],
            Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) body636_665

def body636_667 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d2", Flapjack.Exp.var Flapjack.VarKind.local "d10",
                Flapjack.Exp.var Flapjack.VarKind.local "d11"],
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d14"],
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) body636_666

def body636_668 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "d9",
                    Flapjack.Exp.var Flapjack.VarKind.local "d10"],
                Flapjack.Exp.var Flapjack.VarKind.local "d12"],
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d14"],
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) body636_667

def body636_669 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "d8",
                    Flapjack.Exp.var Flapjack.VarKind.local "d9"],
                Flapjack.Exp.var Flapjack.VarKind.local "d11"],
            Flapjack.Exp.var Flapjack.VarKind.local "d12"],
        Flapjack.Exp.var Flapjack.VarKind.local "d13"],
    Flapjack.Exp.var Flapjack.VarKind.local "d14"]) body636_668

def body636_670 : Prog (BitVec 64) :=
.seq body636_635 body636_669

def body636_671 : Prog (BitVec 64) :=
.dec ("d15") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_670

def body636_672 : Prog (BitVec 64) :=
.dec ("d14") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_671

def body636_673 : Prog (BitVec 64) :=
.dec ("d13") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_672

def body636_674 : Prog (BitVec 64) :=
.dec ("d12") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_673

def body636_675 : Prog (BitVec 64) :=
.dec ("d11") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_674

def body636_676 : Prog (BitVec 64) :=
.dec ("d10") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_675

def body636_677 : Prog (BitVec 64) :=
.dec ("d9") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_676

def body636_678 : Prog (BitVec 64) :=
.dec ("d8") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_677

def body636_679 : Prog (BitVec 64) :=
.dec ("d7") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_678

def body636_680 : Prog (BitVec 64) :=
.dec ("d6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_679

def body636_681 : Prog (BitVec 64) :=
.dec ("d5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_680

def body636_682 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_681

def body636_683 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_682

def body636_684 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_683

def body636_685 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_684

def body636_686 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_685

def body636_687 : Prog (BitVec 64) :=
.dec ("col") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_686

def body636_688 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_687

def body636_689 : Prog (BitVec 64) :=
.dec ("Hc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_688

def body636_690 : Prog (BitVec 64) :=
.dec ("Lc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_689

def body636_691 : Prog (BitVec 64) :=
.dec ("H") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_690

def body636_692 : Prog (BitVec 64) :=
.dec ("L") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_691

def body636_693 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body636_692

def body636_694 : Prog (BitVec 64) :=
.dec ("a7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_693

def body636_695 : Prog (BitVec 64) :=
.dec ("a6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_694

def body636_696 : Prog (BitVec 64) :=
.dec ("a5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_695

def body636_697 : Prog (BitVec 64) :=
.dec ("a4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_696

def body636_698 : Prog (BitVec 64) :=
.dec ("a3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_697

def body636_699 : Prog (BitVec 64) :=
.dec ("a2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_698

def body636_700 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) body636_699

def body636_701 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) body636_700

def originalData636 : Decl (BitVec 64) :=
.function { name := "p256_fp_sqr", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body636_392, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData636 : Decl (BitVec 64) :=
.function { name := "p256_fp_sqr", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body636_701, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original636 := Pancake.PanLang.declToHOL originalData636
def simplified636 := Pancake.PanLang.declToHOL simplifiedData636
end InitECandidate.Proofs.FrontendStages.Declarations
