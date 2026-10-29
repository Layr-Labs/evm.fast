import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree1824_agree_conditional : tree1824 = literal1824 := by
  rw [tree1824_def]
  rfl
theorem node1824_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1824 live1824 coloured1824 = result1824 := by
  rw [tree1824_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1825_agree_conditional : tree1825 = literal1825 := by
  rw [tree1825_def]
  rfl
theorem node1825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1825 live1825 coloured1825 = result1825 := by
  rw [tree1825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1826_agree_conditional
    (child0 : tree1824 = literal1824)
    (child1 : tree1825 = literal1825) : tree1826 = literal1826 := by
  rw [tree1826_def, child0, child1]
  rfl
theorem node1826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1824 live1824 coloured1824 = result1824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1825 live1825 coloured1825 = result1825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1826 live1826 coloured1826 = result1826 := by
  rw [tree1826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1824 coloured1824 at child
  try dsimp only [live1826, coloured1826]
  rw [child]
  dsimp only [result1824]
  have child := child1
  unfold live1825 coloured1825 at child
  try dsimp only [live1826, coloured1826]
  rw [child]
  dsimp only [result1825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1827_agree_conditional : tree1827 = literal1827 := by
  rw [tree1827_def]
  rfl
theorem node1827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1827 live1827 coloured1827 = result1827 := by
  rw [tree1827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1828_agree_conditional
    (child0 : tree1826 = literal1826)
    (child1 : tree1827 = literal1827) : tree1828 = literal1828 := by
  rw [tree1828_def, child0, child1]
  rfl
theorem node1828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1826 live1826 coloured1826 = result1826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1827 live1827 coloured1827 = result1827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1828 live1828 coloured1828 = result1828 := by
  rw [tree1828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1826 coloured1826 at child
  try dsimp only [live1828, coloured1828]
  rw [child]
  dsimp only [result1826]
  have child := child1
  unfold live1827 coloured1827 at child
  try dsimp only [live1828, coloured1828]
  rw [child]
  dsimp only [result1827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1829_agree_conditional
    (child0 : tree1823 = literal1823)
    (child1 : tree1828 = literal1828) : tree1829 = literal1829 := by
  rw [tree1829_def, child0, child1]
  rfl
theorem node1829_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1823 live1823 coloured1823 = result1823)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1828 live1828 coloured1828 = result1828) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1829 live1829 coloured1829 = result1829 := by
  rw [tree1829_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1823 coloured1823 at child
  try dsimp only [live1829, coloured1829]
  rw [child]
  dsimp only [result1823]
  have child := child1
  unfold live1828 coloured1828 at child
  try dsimp only [live1829, coloured1829]
  rw [child]
  dsimp only [result1828]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1830_agree_conditional
    (child0 : tree1820 = literal1820)
    (child1 : tree1829 = literal1829) : tree1830 = literal1830 := by
  rw [tree1830_def, child0, child1]
  rfl
theorem node1830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1820 live1820 coloured1820 = result1820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1829 live1829 coloured1829 = result1829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1830 live1830 coloured1830 = result1830 := by
  rw [tree1830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1820 coloured1820 at child
  try dsimp only [live1830, coloured1830]
  rw [child]
  dsimp only [result1820]
  have child := child1
  unfold live1829 coloured1829 at child
  try dsimp only [live1830, coloured1830]
  rw [child]
  dsimp only [result1829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1831_agree_conditional : tree1831 = literal1831 := by
  rw [tree1831_def]
  rfl
theorem node1831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1831 live1831 coloured1831 = result1831 := by
  rw [tree1831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1832_agree_conditional
    (child0 : tree1830 = literal1830)
    (child1 : tree1831 = literal1831) : tree1832 = literal1832 := by
  rw [tree1832_def, child0, child1]
  rfl
theorem node1832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1830 live1830 coloured1830 = result1830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1831 live1831 coloured1831 = result1831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1832 live1832 coloured1832 = result1832 := by
  rw [tree1832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1830 coloured1830 at child
  try dsimp only [live1832, coloured1832]
  rw [child]
  dsimp only [result1830]
  have child := child1
  unfold live1831 coloured1831 at child
  try dsimp only [live1832, coloured1832]
  rw [child]
  dsimp only [result1831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1833_agree_conditional : tree1833 = literal1833 := by
  rw [tree1833_def]
  rfl
theorem node1833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1833 live1833 coloured1833 = result1833 := by
  rw [tree1833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1834_agree_conditional
    (child0 : tree1832 = literal1832)
    (child1 : tree1833 = literal1833) : tree1834 = literal1834 := by
  rw [tree1834_def, child0, child1]
  rfl
theorem node1834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1832 live1832 coloured1832 = result1832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1833 live1833 coloured1833 = result1833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1834 live1834 coloured1834 = result1834 := by
  rw [tree1834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1832 coloured1832 at child
  try dsimp only [live1834, coloured1834]
  rw [child]
  dsimp only [result1832]
  have child := child1
  unfold live1833 coloured1833 at child
  try dsimp only [live1834, coloured1834]
  rw [child]
  dsimp only [result1833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1835_agree_conditional : tree1835 = literal1835 := by
  rw [tree1835_def]
  rfl
theorem node1835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1835 live1835 coloured1835 = result1835 := by
  rw [tree1835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1836_agree_conditional
    (child0 : tree1834 = literal1834)
    (child1 : tree1835 = literal1835) : tree1836 = literal1836 := by
  rw [tree1836_def, child0, child1]
  rfl
theorem node1836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1834 live1834 coloured1834 = result1834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1835 live1835 coloured1835 = result1835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1836 live1836 coloured1836 = result1836 := by
  rw [tree1836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1834 coloured1834 at child
  try dsimp only [live1836, coloured1836]
  rw [child]
  dsimp only [result1834]
  have child := child1
  unfold live1835 coloured1835 at child
  try dsimp only [live1836, coloured1836]
  rw [child]
  dsimp only [result1835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1837_agree_conditional : tree1837 = literal1837 := by
  rw [tree1837_def]
  rfl
theorem node1837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1837 live1837 coloured1837 = result1837 := by
  rw [tree1837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1838_agree_conditional
    (child0 : tree1836 = literal1836)
    (child1 : tree1837 = literal1837) : tree1838 = literal1838 := by
  rw [tree1838_def, child0, child1]
  rfl
theorem node1838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1836 live1836 coloured1836 = result1836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1837 live1837 coloured1837 = result1837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1838 live1838 coloured1838 = result1838 := by
  rw [tree1838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1836 coloured1836 at child
  try dsimp only [live1838, coloured1838]
  rw [child]
  dsimp only [result1836]
  have child := child1
  unfold live1837 coloured1837 at child
  try dsimp only [live1838, coloured1838]
  rw [child]
  dsimp only [result1837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1839_agree_conditional : tree1839 = literal1839 := by
  rw [tree1839_def]
  rfl
theorem node1839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1839 live1839 coloured1839 = result1839 := by
  rw [tree1839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1840_agree_conditional
    (child0 : tree1838 = literal1838)
    (child1 : tree1839 = literal1839) : tree1840 = literal1840 := by
  rw [tree1840_def, child0, child1]
  rfl
theorem node1840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1838 live1838 coloured1838 = result1838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1839 live1839 coloured1839 = result1839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1840 live1840 coloured1840 = result1840 := by
  rw [tree1840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1838 coloured1838 at child
  try dsimp only [live1840, coloured1840]
  rw [child]
  dsimp only [result1838]
  have child := child1
  unfold live1839 coloured1839 at child
  try dsimp only [live1840, coloured1840]
  rw [child]
  dsimp only [result1839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1841_agree_conditional : tree1841 = literal1841 := by
  rw [tree1841_def]
  rfl
theorem node1841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1841 live1841 coloured1841 = result1841 := by
  rw [tree1841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1842_agree_conditional
    (child0 : tree1840 = literal1840)
    (child1 : tree1841 = literal1841) : tree1842 = literal1842 := by
  rw [tree1842_def, child0, child1]
  rfl
theorem node1842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1840 live1840 coloured1840 = result1840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1841 live1841 coloured1841 = result1841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1842 live1842 coloured1842 = result1842 := by
  rw [tree1842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1840 coloured1840 at child
  try dsimp only [live1842, coloured1842]
  rw [child]
  dsimp only [result1840]
  have child := child1
  unfold live1841 coloured1841 at child
  try dsimp only [live1842, coloured1842]
  rw [child]
  dsimp only [result1841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1843_agree_conditional : tree1843 = literal1843 := by
  rw [tree1843_def]
  rfl
theorem node1843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1843 live1843 coloured1843 = result1843 := by
  rw [tree1843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1844_agree_conditional
    (child0 : tree1842 = literal1842)
    (child1 : tree1843 = literal1843) : tree1844 = literal1844 := by
  rw [tree1844_def, child0, child1]
  rfl
theorem node1844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1842 live1842 coloured1842 = result1842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1843 live1843 coloured1843 = result1843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1844 live1844 coloured1844 = result1844 := by
  rw [tree1844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1842 coloured1842 at child
  try dsimp only [live1844, coloured1844]
  rw [child]
  dsimp only [result1842]
  have child := child1
  unfold live1843 coloured1843 at child
  try dsimp only [live1844, coloured1844]
  rw [child]
  dsimp only [result1843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1845_agree_conditional : tree1845 = literal1845 := by
  rw [tree1845_def]
  rfl
theorem node1845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1845 live1845 coloured1845 = result1845 := by
  rw [tree1845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1846_agree_conditional
    (child0 : tree1844 = literal1844)
    (child1 : tree1845 = literal1845) : tree1846 = literal1846 := by
  rw [tree1846_def, child0, child1]
  rfl
theorem node1846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1844 live1844 coloured1844 = result1844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1845 live1845 coloured1845 = result1845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1846 live1846 coloured1846 = result1846 := by
  rw [tree1846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1844 coloured1844 at child
  try dsimp only [live1846, coloured1846]
  rw [child]
  dsimp only [result1844]
  have child := child1
  unfold live1845 coloured1845 at child
  try dsimp only [live1846, coloured1846]
  rw [child]
  dsimp only [result1845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1847_agree_conditional : tree1847 = literal1847 := by
  rw [tree1847_def]
  rfl
theorem node1847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1847 live1847 coloured1847 = result1847 := by
  rw [tree1847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1848_agree_conditional : tree1848 = literal1848 := by
  rw [tree1848_def]
  rfl
theorem node1848_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1848 live1848 coloured1848 = result1848 := by
  rw [tree1848_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1849_agree_conditional : tree1849 = literal1849 := by
  rw [tree1849_def]
  rfl
theorem node1849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1849 live1849 coloured1849 = result1849 := by
  rw [tree1849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1850_agree_conditional
    (child0 : tree1848 = literal1848)
    (child1 : tree1849 = literal1849) : tree1850 = literal1850 := by
  rw [tree1850_def, child0, child1]
  rfl
theorem node1850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1848 live1848 coloured1848 = result1848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1849 live1849 coloured1849 = result1849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1850 live1850 coloured1850 = result1850 := by
  rw [tree1850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1848 coloured1848 at child
  try dsimp only [live1850, coloured1850]
  rw [child]
  dsimp only [result1848]
  have child := child1
  unfold live1849 coloured1849 at child
  try dsimp only [live1850, coloured1850]
  rw [child]
  dsimp only [result1849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1851_agree_conditional : tree1851 = literal1851 := by
  rw [tree1851_def]
  rfl
theorem node1851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1851 live1851 coloured1851 = result1851 := by
  rw [tree1851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1852_agree_conditional : tree1852 = literal1852 := by
  rw [tree1852_def]
  rfl
theorem node1852_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1852 live1852 coloured1852 = result1852 := by
  rw [tree1852_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1853_agree_conditional
    (child0 : tree1851 = literal1851)
    (child1 : tree1852 = literal1852) : tree1853 = literal1853 := by
  rw [tree1853_def, child0, child1]
  rfl
theorem node1853_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1851 live1851 coloured1851 = result1851)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1852 live1852 coloured1852 = result1852) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1853 live1853 coloured1853 = result1853 := by
  rw [tree1853_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1851 coloured1851 at child
  try dsimp only [live1853, coloured1853]
  rw [child]
  dsimp only [result1851]
  have child := child1
  unfold live1852 coloured1852 at child
  try dsimp only [live1853, coloured1853]
  rw [child]
  dsimp only [result1852]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1854_agree_conditional : tree1854 = literal1854 := by
  rw [tree1854_def]
  rfl
theorem node1854_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1854 live1854 coloured1854 = result1854 := by
  rw [tree1854_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1855_agree_conditional
    (child0 : tree1853 = literal1853)
    (child1 : tree1854 = literal1854) : tree1855 = literal1855 := by
  rw [tree1855_def, child0, child1]
  rfl
theorem node1855_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1853 live1853 coloured1853 = result1853)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1854 live1854 coloured1854 = result1854) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1855 live1855 coloured1855 = result1855 := by
  rw [tree1855_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1853 coloured1853 at child
  try dsimp only [live1855, coloured1855]
  rw [child]
  dsimp only [result1853]
  have child := child1
  unfold live1854 coloured1854 at child
  try dsimp only [live1855, coloured1855]
  rw [child]
  dsimp only [result1854]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1856_agree_conditional : tree1856 = literal1856 := by
  rw [tree1856_def]
  rfl
theorem node1856_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1856 live1856 coloured1856 = result1856 := by
  rw [tree1856_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1857_agree_conditional
    (child0 : tree1855 = literal1855)
    (child1 : tree1856 = literal1856) : tree1857 = literal1857 := by
  rw [tree1857_def, child0, child1]
  rfl
theorem node1857_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1855 live1855 coloured1855 = result1855)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1856 live1856 coloured1856 = result1856) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1857 live1857 coloured1857 = result1857 := by
  rw [tree1857_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1855 coloured1855 at child
  try dsimp only [live1857, coloured1857]
  rw [child]
  dsimp only [result1855]
  have child := child1
  unfold live1856 coloured1856 at child
  try dsimp only [live1857, coloured1857]
  rw [child]
  dsimp only [result1856]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1858_agree_conditional : tree1858 = literal1858 := by
  rw [tree1858_def]
  rfl
theorem node1858_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1858 live1858 coloured1858 = result1858 := by
  rw [tree1858_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1859_agree_conditional
    (child0 : tree1857 = literal1857)
    (child1 : tree1858 = literal1858) : tree1859 = literal1859 := by
  rw [tree1859_def, child0, child1]
  rfl
theorem node1859_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1857 live1857 coloured1857 = result1857)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1858 live1858 coloured1858 = result1858) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1859 live1859 coloured1859 = result1859 := by
  rw [tree1859_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1857 coloured1857 at child
  try dsimp only [live1859, coloured1859]
  rw [child]
  dsimp only [result1857]
  have child := child1
  unfold live1858 coloured1858 at child
  try dsimp only [live1859, coloured1859]
  rw [child]
  dsimp only [result1858]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1860_agree_conditional : tree1860 = literal1860 := by
  rw [tree1860_def]
  rfl
theorem node1860_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1860 live1860 coloured1860 = result1860 := by
  rw [tree1860_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1861_agree_conditional
    (child0 : tree1859 = literal1859)
    (child1 : tree1860 = literal1860) : tree1861 = literal1861 := by
  rw [tree1861_def, child0, child1]
  rfl
theorem node1861_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1859 live1859 coloured1859 = result1859)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1860 live1860 coloured1860 = result1860) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1861 live1861 coloured1861 = result1861 := by
  rw [tree1861_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1859 coloured1859 at child
  try dsimp only [live1861, coloured1861]
  rw [child]
  dsimp only [result1859]
  have child := child1
  unfold live1860 coloured1860 at child
  try dsimp only [live1861, coloured1861]
  rw [child]
  dsimp only [result1860]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1862_agree_conditional : tree1862 = literal1862 := by
  rw [tree1862_def]
  rfl
theorem node1862_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1862 live1862 coloured1862 = result1862 := by
  rw [tree1862_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1863_agree_conditional
    (child0 : tree1861 = literal1861)
    (child1 : tree1862 = literal1862) : tree1863 = literal1863 := by
  rw [tree1863_def, child0, child1]
  rfl
theorem node1863_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1861 live1861 coloured1861 = result1861)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1862 live1862 coloured1862 = result1862) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1863 live1863 coloured1863 = result1863 := by
  rw [tree1863_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1861 coloured1861 at child
  try dsimp only [live1863, coloured1863]
  rw [child]
  dsimp only [result1861]
  have child := child1
  unfold live1862 coloured1862 at child
  try dsimp only [live1863, coloured1863]
  rw [child]
  dsimp only [result1862]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1864_agree_conditional : tree1864 = literal1864 := by
  rw [tree1864_def]
  rfl
theorem node1864_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1864 live1864 coloured1864 = result1864 := by
  rw [tree1864_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1865_agree_conditional
    (child0 : tree1863 = literal1863)
    (child1 : tree1864 = literal1864) : tree1865 = literal1865 := by
  rw [tree1865_def, child0, child1]
  rfl
theorem node1865_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1863 live1863 coloured1863 = result1863)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1864 live1864 coloured1864 = result1864) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1865 live1865 coloured1865 = result1865 := by
  rw [tree1865_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1863 coloured1863 at child
  try dsimp only [live1865, coloured1865]
  rw [child]
  dsimp only [result1863]
  have child := child1
  unfold live1864 coloured1864 at child
  try dsimp only [live1865, coloured1865]
  rw [child]
  dsimp only [result1864]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1866_agree_conditional : tree1866 = literal1866 := by
  rw [tree1866_def]
  rfl
theorem node1866_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1866 live1866 coloured1866 = result1866 := by
  rw [tree1866_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1867_agree_conditional
    (child0 : tree1865 = literal1865)
    (child1 : tree1866 = literal1866) : tree1867 = literal1867 := by
  rw [tree1867_def, child0, child1]
  rfl
theorem node1867_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1865 live1865 coloured1865 = result1865)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1866 live1866 coloured1866 = result1866) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1867 live1867 coloured1867 = result1867 := by
  rw [tree1867_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1865 coloured1865 at child
  try dsimp only [live1867, coloured1867]
  rw [child]
  dsimp only [result1865]
  have child := child1
  unfold live1866 coloured1866 at child
  try dsimp only [live1867, coloured1867]
  rw [child]
  dsimp only [result1866]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1868_agree_conditional : tree1868 = literal1868 := by
  rw [tree1868_def]
  rfl
theorem node1868_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1868 live1868 coloured1868 = result1868 := by
  rw [tree1868_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1869_agree_conditional
    (child0 : tree1867 = literal1867)
    (child1 : tree1868 = literal1868) : tree1869 = literal1869 := by
  rw [tree1869_def, child0, child1]
  rfl
theorem node1869_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1867 live1867 coloured1867 = result1867)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1868 live1868 coloured1868 = result1868) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1869 live1869 coloured1869 = result1869 := by
  rw [tree1869_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1867 coloured1867 at child
  try dsimp only [live1869, coloured1869]
  rw [child]
  dsimp only [result1867]
  have child := child1
  unfold live1868 coloured1868 at child
  try dsimp only [live1869, coloured1869]
  rw [child]
  dsimp only [result1868]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1870_agree_conditional : tree1870 = literal1870 := by
  rw [tree1870_def]
  rfl
theorem node1870_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1870 live1870 coloured1870 = result1870 := by
  rw [tree1870_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1871_agree_conditional
    (child0 : tree1869 = literal1869)
    (child1 : tree1870 = literal1870) : tree1871 = literal1871 := by
  rw [tree1871_def, child0, child1]
  rfl
theorem node1871_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1869 live1869 coloured1869 = result1869)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1870 live1870 coloured1870 = result1870) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1871 live1871 coloured1871 = result1871 := by
  rw [tree1871_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1869 coloured1869 at child
  try dsimp only [live1871, coloured1871]
  rw [child]
  dsimp only [result1869]
  have child := child1
  unfold live1870 coloured1870 at child
  try dsimp only [live1871, coloured1871]
  rw [child]
  dsimp only [result1870]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1872_agree_conditional : tree1872 = literal1872 := by
  rw [tree1872_def]
  rfl
theorem node1872_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1872 live1872 coloured1872 = result1872 := by
  rw [tree1872_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1873_agree_conditional
    (child0 : tree1871 = literal1871)
    (child1 : tree1872 = literal1872) : tree1873 = literal1873 := by
  rw [tree1873_def, child0, child1]
  rfl
theorem node1873_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1871 live1871 coloured1871 = result1871)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1872 live1872 coloured1872 = result1872) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1873 live1873 coloured1873 = result1873 := by
  rw [tree1873_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1871 coloured1871 at child
  try dsimp only [live1873, coloured1873]
  rw [child]
  dsimp only [result1871]
  have child := child1
  unfold live1872 coloured1872 at child
  try dsimp only [live1873, coloured1873]
  rw [child]
  dsimp only [result1872]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1874_agree_conditional : tree1874 = literal1874 := by
  rw [tree1874_def]
  rfl
theorem node1874_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1874 live1874 coloured1874 = result1874 := by
  rw [tree1874_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1875_agree_conditional
    (child0 : tree1873 = literal1873)
    (child1 : tree1874 = literal1874) : tree1875 = literal1875 := by
  rw [tree1875_def, child0, child1]
  rfl
theorem node1875_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1873 live1873 coloured1873 = result1873)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1874 live1874 coloured1874 = result1874) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1875 live1875 coloured1875 = result1875 := by
  rw [tree1875_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1873 coloured1873 at child
  try dsimp only [live1875, coloured1875]
  rw [child]
  dsimp only [result1873]
  have child := child1
  unfold live1874 coloured1874 at child
  try dsimp only [live1875, coloured1875]
  rw [child]
  dsimp only [result1874]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1876_agree_conditional : tree1876 = literal1876 := by
  rw [tree1876_def]
  rfl
theorem node1876_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1876 live1876 coloured1876 = result1876 := by
  rw [tree1876_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1877_agree_conditional
    (child0 : tree1875 = literal1875)
    (child1 : tree1876 = literal1876) : tree1877 = literal1877 := by
  rw [tree1877_def, child0, child1]
  rfl
theorem node1877_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1875 live1875 coloured1875 = result1875)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1876 live1876 coloured1876 = result1876) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1877 live1877 coloured1877 = result1877 := by
  rw [tree1877_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1875 coloured1875 at child
  try dsimp only [live1877, coloured1877]
  rw [child]
  dsimp only [result1875]
  have child := child1
  unfold live1876 coloured1876 at child
  try dsimp only [live1877, coloured1877]
  rw [child]
  dsimp only [result1876]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1878_agree_conditional : tree1878 = literal1878 := by
  rw [tree1878_def]
  rfl
theorem node1878_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1878 live1878 coloured1878 = result1878 := by
  rw [tree1878_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1879_agree_conditional
    (child0 : tree1877 = literal1877)
    (child1 : tree1878 = literal1878) : tree1879 = literal1879 := by
  rw [tree1879_def, child0, child1]
  rfl
theorem node1879_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1877 live1877 coloured1877 = result1877)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1878 live1878 coloured1878 = result1878) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1879 live1879 coloured1879 = result1879 := by
  rw [tree1879_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1877 coloured1877 at child
  try dsimp only [live1879, coloured1879]
  rw [child]
  dsimp only [result1877]
  have child := child1
  unfold live1878 coloured1878 at child
  try dsimp only [live1879, coloured1879]
  rw [child]
  dsimp only [result1878]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1880_agree_conditional : tree1880 = literal1880 := by
  rw [tree1880_def]
  rfl
theorem node1880_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1880 live1880 coloured1880 = result1880 := by
  rw [tree1880_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1881_agree_conditional
    (child0 : tree1879 = literal1879)
    (child1 : tree1880 = literal1880) : tree1881 = literal1881 := by
  rw [tree1881_def, child0, child1]
  rfl
theorem node1881_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1879 live1879 coloured1879 = result1879)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1880 live1880 coloured1880 = result1880) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1881 live1881 coloured1881 = result1881 := by
  rw [tree1881_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1879 coloured1879 at child
  try dsimp only [live1881, coloured1881]
  rw [child]
  dsimp only [result1879]
  have child := child1
  unfold live1880 coloured1880 at child
  try dsimp only [live1881, coloured1881]
  rw [child]
  dsimp only [result1880]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1882_agree_conditional : tree1882 = literal1882 := by
  rw [tree1882_def]
  rfl
theorem node1882_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1882 live1882 coloured1882 = result1882 := by
  rw [tree1882_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1883_agree_conditional
    (child0 : tree1881 = literal1881)
    (child1 : tree1882 = literal1882) : tree1883 = literal1883 := by
  rw [tree1883_def, child0, child1]
  rfl
theorem node1883_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1881 live1881 coloured1881 = result1881)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1882 live1882 coloured1882 = result1882) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1883 live1883 coloured1883 = result1883 := by
  rw [tree1883_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1881 coloured1881 at child
  try dsimp only [live1883, coloured1883]
  rw [child]
  dsimp only [result1881]
  have child := child1
  unfold live1882 coloured1882 at child
  try dsimp only [live1883, coloured1883]
  rw [child]
  dsimp only [result1882]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1884_agree_conditional : tree1884 = literal1884 := by
  rw [tree1884_def]
  rfl
theorem node1884_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1884 live1884 coloured1884 = result1884 := by
  rw [tree1884_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1885_agree_conditional
    (child0 : tree1883 = literal1883)
    (child1 : tree1884 = literal1884) : tree1885 = literal1885 := by
  rw [tree1885_def, child0, child1]
  rfl
theorem node1885_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1883 live1883 coloured1883 = result1883)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1884 live1884 coloured1884 = result1884) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1885 live1885 coloured1885 = result1885 := by
  rw [tree1885_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1883 coloured1883 at child
  try dsimp only [live1885, coloured1885]
  rw [child]
  dsimp only [result1883]
  have child := child1
  unfold live1884 coloured1884 at child
  try dsimp only [live1885, coloured1885]
  rw [child]
  dsimp only [result1884]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1886_agree_conditional : tree1886 = literal1886 := by
  rw [tree1886_def]
  rfl
theorem node1886_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1886 live1886 coloured1886 = result1886 := by
  rw [tree1886_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1887_agree_conditional
    (child0 : tree1885 = literal1885)
    (child1 : tree1886 = literal1886) : tree1887 = literal1887 := by
  rw [tree1887_def, child0, child1]
  rfl
theorem node1887_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1885 live1885 coloured1885 = result1885)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1886 live1886 coloured1886 = result1886) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1887 live1887 coloured1887 = result1887 := by
  rw [tree1887_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1885 coloured1885 at child
  try dsimp only [live1887, coloured1887]
  rw [child]
  dsimp only [result1885]
  have child := child1
  unfold live1886 coloured1886 at child
  try dsimp only [live1887, coloured1887]
  rw [child]
  dsimp only [result1886]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1888_agree_conditional : tree1888 = literal1888 := by
  rw [tree1888_def]
  rfl
theorem node1888_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1888 live1888 coloured1888 = result1888 := by
  rw [tree1888_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1889_agree_conditional
    (child0 : tree1887 = literal1887)
    (child1 : tree1888 = literal1888) : tree1889 = literal1889 := by
  rw [tree1889_def, child0, child1]
  rfl
theorem node1889_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1887 live1887 coloured1887 = result1887)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1888 live1888 coloured1888 = result1888) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1889 live1889 coloured1889 = result1889 := by
  rw [tree1889_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1887 coloured1887 at child
  try dsimp only [live1889, coloured1889]
  rw [child]
  dsimp only [result1887]
  have child := child1
  unfold live1888 coloured1888 at child
  try dsimp only [live1889, coloured1889]
  rw [child]
  dsimp only [result1888]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1890_agree_conditional : tree1890 = literal1890 := by
  rw [tree1890_def]
  rfl
theorem node1890_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1890 live1890 coloured1890 = result1890 := by
  rw [tree1890_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1891_agree_conditional
    (child0 : tree1889 = literal1889)
    (child1 : tree1890 = literal1890) : tree1891 = literal1891 := by
  rw [tree1891_def, child0, child1]
  rfl
theorem node1891_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1889 live1889 coloured1889 = result1889)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1890 live1890 coloured1890 = result1890) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1891 live1891 coloured1891 = result1891 := by
  rw [tree1891_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1889 coloured1889 at child
  try dsimp only [live1891, coloured1891]
  rw [child]
  dsimp only [result1889]
  have child := child1
  unfold live1890 coloured1890 at child
  try dsimp only [live1891, coloured1891]
  rw [child]
  dsimp only [result1890]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1892_agree_conditional : tree1892 = literal1892 := by
  rw [tree1892_def]
  rfl
theorem node1892_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1892 live1892 coloured1892 = result1892 := by
  rw [tree1892_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1893_agree_conditional
    (child0 : tree1891 = literal1891)
    (child1 : tree1892 = literal1892) : tree1893 = literal1893 := by
  rw [tree1893_def, child0, child1]
  rfl
theorem node1893_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1891 live1891 coloured1891 = result1891)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1892 live1892 coloured1892 = result1892) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1893 live1893 coloured1893 = result1893 := by
  rw [tree1893_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1891 coloured1891 at child
  try dsimp only [live1893, coloured1893]
  rw [child]
  dsimp only [result1891]
  have child := child1
  unfold live1892 coloured1892 at child
  try dsimp only [live1893, coloured1893]
  rw [child]
  dsimp only [result1892]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1894_agree_conditional : tree1894 = literal1894 := by
  rw [tree1894_def]
  rfl
theorem node1894_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1894 live1894 coloured1894 = result1894 := by
  rw [tree1894_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1895_agree_conditional
    (child0 : tree1893 = literal1893)
    (child1 : tree1894 = literal1894) : tree1895 = literal1895 := by
  rw [tree1895_def, child0, child1]
  rfl
theorem node1895_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1893 live1893 coloured1893 = result1893)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1894 live1894 coloured1894 = result1894) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1895 live1895 coloured1895 = result1895 := by
  rw [tree1895_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1893 coloured1893 at child
  try dsimp only [live1895, coloured1895]
  rw [child]
  dsimp only [result1893]
  have child := child1
  unfold live1894 coloured1894 at child
  try dsimp only [live1895, coloured1895]
  rw [child]
  dsimp only [result1894]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1896_agree_conditional : tree1896 = literal1896 := by
  rw [tree1896_def]
  rfl
theorem node1896_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1896 live1896 coloured1896 = result1896 := by
  rw [tree1896_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1897_agree_conditional : tree1897 = literal1897 := by
  rw [tree1897_def]
  rfl
theorem node1897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1897 live1897 coloured1897 = result1897 := by
  rw [tree1897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1898_agree_conditional
    (child0 : tree1896 = literal1896)
    (child1 : tree1897 = literal1897) : tree1898 = literal1898 := by
  rw [tree1898_def, child0, child1]
  rfl
theorem node1898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1896 live1896 coloured1896 = result1896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1897 live1897 coloured1897 = result1897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1898 live1898 coloured1898 = result1898 := by
  rw [tree1898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1896 coloured1896 at child
  try dsimp only [live1898, coloured1898]
  rw [child]
  dsimp only [result1896]
  have child := child1
  unfold live1897 coloured1897 at child
  try dsimp only [live1898, coloured1898]
  rw [child]
  dsimp only [result1897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1899_agree_conditional : tree1899 = literal1899 := by
  rw [tree1899_def]
  rfl
theorem node1899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1899 live1899 coloured1899 = result1899 := by
  rw [tree1899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1900_agree_conditional
    (child0 : tree1898 = literal1898)
    (child1 : tree1899 = literal1899) : tree1900 = literal1900 := by
  rw [tree1900_def, child0, child1]
  rfl
theorem node1900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1898 live1898 coloured1898 = result1898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1899 live1899 coloured1899 = result1899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1900 live1900 coloured1900 = result1900 := by
  rw [tree1900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1898 coloured1898 at child
  try dsimp only [live1900, coloured1900]
  rw [child]
  dsimp only [result1898]
  have child := child1
  unfold live1899 coloured1899 at child
  try dsimp only [live1900, coloured1900]
  rw [child]
  dsimp only [result1899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1901_agree_conditional
    (child0 : tree1895 = literal1895)
    (child1 : tree1900 = literal1900) : tree1901 = literal1901 := by
  rw [tree1901_def, child0, child1]
  rfl
theorem node1901_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1895 live1895 coloured1895 = result1895)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1900 live1900 coloured1900 = result1900) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1901 live1901 coloured1901 = result1901 := by
  rw [tree1901_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1895 coloured1895 at child
  try dsimp only [live1901, coloured1901]
  rw [child]
  dsimp only [result1895]
  have child := child1
  unfold live1900 coloured1900 at child
  try dsimp only [live1901, coloured1901]
  rw [child]
  dsimp only [result1900]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1902_agree_conditional : tree1902 = literal1902 := by
  rw [tree1902_def]
  rfl
theorem node1902_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1902 live1902 coloured1902 = result1902 := by
  rw [tree1902_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1903_agree_conditional
    (child0 : tree1901 = literal1901)
    (child1 : tree1902 = literal1902) : tree1903 = literal1903 := by
  rw [tree1903_def, child0, child1]
  rfl
theorem node1903_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1901 live1901 coloured1901 = result1901)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1902 live1902 coloured1902 = result1902) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1903 live1903 coloured1903 = result1903 := by
  rw [tree1903_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1901 coloured1901 at child
  try dsimp only [live1903, coloured1903]
  rw [child]
  dsimp only [result1901]
  have child := child1
  unfold live1902 coloured1902 at child
  try dsimp only [live1903, coloured1903]
  rw [child]
  dsimp only [result1902]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1904_agree_conditional
    (child0 : tree1850 = literal1850)
    (child1 : tree1903 = literal1903) : tree1904 = literal1904 := by
  rw [tree1904_def, child0, child1]
  rfl
theorem node1904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1850 live1850 coloured1850 = result1850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1903 live1903 coloured1903 = result1903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1904 live1904 coloured1904 = result1904 := by
  rw [tree1904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1850 coloured1850 at child
  try dsimp only [live1904, coloured1904]
  rw [child]
  dsimp only [result1850]
  have child := child1
  unfold live1903 coloured1903 at child
  try dsimp only [live1904, coloured1904]
  rw [child]
  dsimp only [result1903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1905_agree_conditional : tree1905 = literal1905 := by
  rw [tree1905_def]
  rfl
theorem node1905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1905 live1905 coloured1905 = result1905 := by
  rw [tree1905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1906_agree_conditional
    (child0 : tree1904 = literal1904)
    (child1 : tree1905 = literal1905) : tree1906 = literal1906 := by
  rw [tree1906_def, child0, child1]
  rfl
theorem node1906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1904 live1904 coloured1904 = result1904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1905 live1905 coloured1905 = result1905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1906 live1906 coloured1906 = result1906 := by
  rw [tree1906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1904 coloured1904 at child
  try dsimp only [live1906, coloured1906]
  rw [child]
  dsimp only [result1904]
  have child := child1
  unfold live1905 coloured1905 at child
  try dsimp only [live1906, coloured1906]
  rw [child]
  dsimp only [result1905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1907_agree_conditional
    (child0 : tree1847 = literal1847)
    (child1 : tree1906 = literal1906) : tree1907 = literal1907 := by
  rw [tree1907_def, child0, child1]
  rfl
theorem node1907_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1847 live1847 coloured1847 = result1847)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1906 live1906 coloured1906 = result1906) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1907 live1907 coloured1907 = result1907 := by
  rw [tree1907_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1847 coloured1847 at child
  try dsimp only [live1907, coloured1907]
  rw [child]
  dsimp only [result1847]
  have child := child1
  unfold live1906 coloured1906 at child
  try dsimp only [live1907, coloured1907]
  rw [child]
  dsimp only [result1906]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1908_agree_conditional : tree1908 = literal1908 := by
  rw [tree1908_def]
  rfl
theorem node1908_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1908 live1908 coloured1908 = result1908 := by
  rw [tree1908_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1909_agree_conditional
    (child0 : tree1907 = literal1907)
    (child1 : tree1908 = literal1908) : tree1909 = literal1909 := by
  rw [tree1909_def, child0, child1]
  rfl
theorem node1909_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1907 live1907 coloured1907 = result1907)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1908 live1908 coloured1908 = result1908) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1909 live1909 coloured1909 = result1909 := by
  rw [tree1909_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1907 coloured1907 at child
  try dsimp only [live1909, coloured1909]
  rw [child]
  dsimp only [result1907]
  have child := child1
  unfold live1908 coloured1908 at child
  try dsimp only [live1909, coloured1909]
  rw [child]
  dsimp only [result1908]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1910_agree_conditional : tree1910 = literal1910 := by
  rw [tree1910_def]
  rfl
theorem node1910_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1910 live1910 coloured1910 = result1910 := by
  rw [tree1910_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1911_agree_conditional
    (child0 : tree1909 = literal1909)
    (child1 : tree1910 = literal1910) : tree1911 = literal1911 := by
  rw [tree1911_def, child0, child1]
  rfl
theorem node1911_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1909 live1909 coloured1909 = result1909)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1910 live1910 coloured1910 = result1910) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1911 live1911 coloured1911 = result1911 := by
  rw [tree1911_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1909 coloured1909 at child
  try dsimp only [live1911, coloured1911]
  rw [child]
  dsimp only [result1909]
  have child := child1
  unfold live1910 coloured1910 at child
  try dsimp only [live1911, coloured1911]
  rw [child]
  dsimp only [result1910]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1912_agree_conditional
    (child0 : tree1846 = literal1846)
    (child1 : tree1911 = literal1911) : tree1912 = literal1912 := by
  rw [tree1912_def, child0, child1]
  rfl
theorem node1912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1846 live1846 coloured1846 = result1846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1911 live1911 coloured1911 = result1911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1912 live1912 coloured1912 = result1912 := by
  rw [tree1912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1846 coloured1846 at child
  try dsimp only [live1912, coloured1912]
  rw [child]
  dsimp only [result1846]
  have child := child1
  unfold live1911 coloured1911 at child
  try dsimp only [live1912, coloured1912]
  rw [child]
  dsimp only [result1911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1913_agree_conditional : tree1913 = literal1913 := by
  rw [tree1913_def]
  rfl
theorem node1913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1913 live1913 coloured1913 = result1913 := by
  rw [tree1913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1914_agree_conditional
    (child0 : tree1912 = literal1912)
    (child1 : tree1913 = literal1913) : tree1914 = literal1914 := by
  rw [tree1914_def, child0, child1]
  rfl
theorem node1914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1912 live1912 coloured1912 = result1912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1913 live1913 coloured1913 = result1913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1914 live1914 coloured1914 = result1914 := by
  rw [tree1914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1912 coloured1912 at child
  try dsimp only [live1914, coloured1914]
  rw [child]
  dsimp only [result1912]
  have child := child1
  unfold live1913 coloured1913 at child
  try dsimp only [live1914, coloured1914]
  rw [child]
  dsimp only [result1913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1915_agree_conditional : tree1915 = literal1915 := by
  rw [tree1915_def]
  rfl
theorem node1915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1915 live1915 coloured1915 = result1915 := by
  rw [tree1915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1916_agree_conditional
    (child0 : tree1914 = literal1914)
    (child1 : tree1915 = literal1915) : tree1916 = literal1916 := by
  rw [tree1916_def, child0, child1]
  rfl
theorem node1916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1914 live1914 coloured1914 = result1914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1915 live1915 coloured1915 = result1915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1916 live1916 coloured1916 = result1916 := by
  rw [tree1916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1914 coloured1914 at child
  try dsimp only [live1916, coloured1916]
  rw [child]
  dsimp only [result1914]
  have child := child1
  unfold live1915 coloured1915 at child
  try dsimp only [live1916, coloured1916]
  rw [child]
  dsimp only [result1915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1917_agree_conditional : tree1917 = literal1917 := by
  rw [tree1917_def]
  rfl
theorem node1917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1917 live1917 coloured1917 = result1917 := by
  rw [tree1917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1918_agree_conditional
    (child0 : tree1916 = literal1916)
    (child1 : tree1917 = literal1917) : tree1918 = literal1918 := by
  rw [tree1918_def, child0, child1]
  rfl
theorem node1918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1916 live1916 coloured1916 = result1916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1917 live1917 coloured1917 = result1917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1918 live1918 coloured1918 = result1918 := by
  rw [tree1918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1916 coloured1916 at child
  try dsimp only [live1918, coloured1918]
  rw [child]
  dsimp only [result1916]
  have child := child1
  unfold live1917 coloured1917 at child
  try dsimp only [live1918, coloured1918]
  rw [child]
  dsimp only [result1917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1919_agree_conditional : tree1919 = literal1919 := by
  rw [tree1919_def]
  rfl
theorem node1919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1919 live1919 coloured1919 = result1919 := by
  rw [tree1919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
